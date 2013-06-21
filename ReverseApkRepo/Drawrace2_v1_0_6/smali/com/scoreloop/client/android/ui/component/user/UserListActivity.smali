.class public Lcom/scoreloop/client/android/ui/component/user/UserListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "UserListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;
.implements Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/user/UserListActivity$2;,
        Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;",
        "Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;",
        "Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;"
    }
.end annotation


# instance fields
.field private _addBuddiesListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

.field private _buddies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private _buddiesPlaying:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private _matchBuddyListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

.field private _requestType:Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;

.field private _seeMoreListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

.field private _showSeeMore:Z

.field private _userController:Lcom/scoreloop/client/android/core/controller/UserController;

.field private _usersController:Lcom/scoreloop/client/android/core/controller/UsersController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    .line 60
    sget-object v0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;->NONE:Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_requestType:Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_showSeeMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/component/user/UserListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->hideSpinner()V

    return-void
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/component/user/UserListActivity;ILcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->setNeedsRefresh(ILcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/scoreloop/client/android/ui/component/user/UserListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->isPaused()Z

    move-result v0

    return v0
.end method

.method private addUsers(Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;Ljava/util/List;Ljava/lang/Boolean;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter "playsSessionGame"
    .parameter "showSeeMore"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/ui/framework/BaseListAdapter",
            "<",
            "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/User;",
            ">;",
            "Ljava/lang/Boolean;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/framework/BaseListItem;>;"
    .local p2, users:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/User;>;"
    const/4 v0, 0x0

    .line 69
    .local v0, i:I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/core/model/User;

    .line 70
    .local v2, user:Lcom/scoreloop/client/android/core/model/User;
    if-eqz p4, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getSeeMoreListItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 76
    .end local v2           #user:Lcom/scoreloop/client/android/core/model/User;
    :cond_0
    return-void

    .line 74
    .restart local v2       #user:Lcom/scoreloop/client/android/core/model/User;
    :cond_1
    new-instance v3, Lcom/scoreloop/client/android/ui/component/user/UserListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020067

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/scoreloop/client/android/ui/component/user/UserListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/core/model/User;Z)V

    invoke-virtual {p1, v3}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getAddBuddiesListItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_addBuddiesListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddiesListItem;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddiesListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_addBuddiesListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_addBuddiesListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    return-object v0
.end method

.method private getMatchBuddiesListItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_matchBuddyListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/scoreloop/client/android/ui/component/user/UserFindMatchListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getTopParent()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserFindMatchListItem;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_matchBuddyListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_matchBuddyListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    return-object v0
.end method

.method private getSeeMoreListItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_seeMoreListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/ExpandableListItem;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/component/base/ExpandableListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_seeMoreListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_seeMoreListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    return-object v0
.end method

.method private updateList()V
    .locals 12

    .prologue
    const v11, 0x7f0802be

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 244
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/framework/BaseListItem;>;"
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->clear()V

    .line 246
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->isSessionUser()Z

    move-result v2

    .line 248
    .local v2, isSessionUser:Z
    if-eqz v2, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getAddBuddiesListItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 252
    :cond_0
    const/4 v1, 0x0

    .line 253
    .local v1, hasBuddies:Z
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 254
    .local v3, otherBuddiesCount:I
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddiesPlaying:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 255
    new-instance v6, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const v7, 0x7f0802a2

    invoke-virtual {p0, v7}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v9

    invoke-virtual {v9}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v10, v7}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 256
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddiesPlaying:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v8, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_showSeeMore:Z

    if-eqz v8, :cond_4

    if-lez v3, :cond_4

    :goto_0
    invoke-direct {p0, v0, v6, v7, v4}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->addUsers(Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;Ljava/util/List;Ljava/lang/Boolean;Z)V

    .line 257
    const/4 v1, 0x1

    .line 259
    :cond_1
    if-lez v3, :cond_2

    .line 260
    new-instance v4, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    invoke-virtual {p0, v11}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v10, v6}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 261
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddies:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v0, v4, v6, v5}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->addUsers(Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;Ljava/util/List;Ljava/lang/Boolean;Z)V

    .line 262
    const/4 v1, 0x1

    .line 264
    :cond_2
    if-nez v1, :cond_3

    .line 265
    if-eqz v2, :cond_5

    .line 266
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getMatchBuddiesListItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 272
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v4, v5

    .line 256
    goto :goto_0

    .line 268
    :cond_5
    new-instance v4, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    invoke-virtual {p0, v11}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v10, v5}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 269
    new-instance v4, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;

    const v5, 0x7f0802e2

    invoke-virtual {p0, v5}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V
    .locals 2
    .parameter "dialog"
    .parameter "actionId"

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->dismiss()V

    .line 102
    if-nez p2, :cond_0

    .line 103
    sget-object v0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;->LOAD_RECOMMENDATIONS:Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->SET:Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->setNeedsRefresh(ILcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;)V

    .line 104
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->refreshIfNeeded()V

    .line 106
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/UserController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    .line 113
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/UsersController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_usersController:Lcom/scoreloop/client/android/core/controller/UsersController;

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v3

    const-string v2, "numberBuddies"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_0

    .line 129
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 121
    :pswitch_0
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getTopParent()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, dialog:Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setText(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setOkButtonText(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setOnActionListener(Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;)V

    .line 125
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setCancelable(Z)V

    .line 126
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_addBuddiesListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    if-ne p1, v1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createUserAddBuddyScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_matchBuddyListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    if-ne p1, v1, :cond_2

    .line 138
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->showDialogSafe(IZ)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_seeMoreListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    if-ne p1, v1, :cond_3

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_showSeeMore:Z

    .line 141
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->updateList()V

    goto :goto_0

    .line 142
    :cond_3
    instance-of v1, p1, Lcom/scoreloop/client/android/ui/component/user/UserListItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 143
    check-cast v0, Lcom/scoreloop/client/android/ui/component/user/UserListItem;

    .line 144
    .local v0, userListItem:Lcom/scoreloop/client/android/ui/component/user/UserListItem;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v2

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/user/UserListItem;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/user/UserListItem;->playsSessionGame()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createUserDetailScreenDescription(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Boolean;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0
.end method

.method public onRefresh(I)V
    .locals 4
    .parameter "flags"

    .prologue
    .line 150
    invoke-static {}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;->values()[Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;

    move-result-object v2

    aget-object v2, v2, p1

    iput-object v2, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_requestType:Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;

    .line 152
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    .line 153
    .local v1, user:Lcom/scoreloop/client/android/core/model/User;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    .line 155
    .local v0, game:Lcom/scoreloop/client/android/core/model/Game;
    sget-object v2, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$2;->$SwitchMap$com$scoreloop$client$android$ui$component$user$UserListActivity$RequestType:[I

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_requestType:Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 157
    :pswitch_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddies:Ljava/util/List;

    iput-object v2, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddiesPlaying:Ljava/util/List;

    .line 158
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v2, v1}, Lcom/scoreloop/client/android/core/controller/UserController;->setUser(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 159
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 160
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/UserController;->loadBuddies()V

    .line 161
    if-eqz v0, :cond_0

    .line 162
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_usersController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 163
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_usersController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {v2, v1, v0}, Lcom/scoreloop/client/android/core/controller/UsersController;->loadBuddies(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;)V

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_usersController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 169
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_usersController:Lcom/scoreloop/client/android/core/controller/UsersController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/core/controller/UsersController;->loadRecommendedBuddies(I)V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 176
    const-string v0, "numberBuddies"

    invoke-static {p2, v0, p3, p4}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->isValueChangedFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;->LOAD_BUDDIES:Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->SET:Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->setNeedsRefresh(ILcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
    .locals 3
    .parameter "valueStore"
    .parameter "key"

    .prologue
    .line 183
    const-string v0, "numberBuddies"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 186
    :cond_0
    return-void
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 9
    .parameter "aRequestController"

    .prologue
    .line 190
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_requestType:Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;

    .line 191
    .local v4, requestType:Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;
    sget-object v6, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;->NONE:Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;

    iput-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_requestType:Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;

    .line 193
    sget-object v6, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$2;->$SwitchMap$com$scoreloop$client$android$ui$component$user$UserListActivity$RequestType:[I

    invoke-virtual {v4}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_usersController:Lcom/scoreloop/client/android/core/controller/UsersController;

    if-ne p1, v6, :cond_4

    .line 196
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_usersController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/controller/UsersController;->getUsers()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddiesPlaying:Ljava/util/List;

    .line 204
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddiesPlaying:Ljava/util/List;

    if-eqz v6, :cond_7

    :cond_2
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddies:Ljava/util/List;

    if-eqz v6, :cond_7

    .line 205
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 206
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddiesPlaying:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/core/model/User;

    .line 207
    .local v1, buddyPlaying:Lcom/scoreloop/client/android/core/model/User;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 208
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddies:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/User;

    .line 209
    .local v0, buddy:Lcom/scoreloop/client/android/core/model/User;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 210
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddies:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 197
    .end local v0           #buddy:Lcom/scoreloop/client/android/core/model/User;
    .end local v1           #buddyPlaying:Lcom/scoreloop/client/android/core/model/User;
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    if-ne p1, v6, :cond_1

    .line 198
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/model/User;->getBuddyUsers()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddies:Ljava/util/List;

    .line 200
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddies:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 201
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddies:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_buddies:Ljava/util/List;

    goto :goto_1

    .line 207
    .restart local v0       #buddy:Lcom/scoreloop/client/android/core/model/User;
    .restart local v1       #buddyPlaying:Lcom/scoreloop/client/android/core/model/User;
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 216
    .end local v0           #buddy:Lcom/scoreloop/client/android/core/model/User;
    .end local v1           #buddyPlaying:Lcom/scoreloop/client/android/core/model/User;
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->updateList()V

    goto :goto_0

    .line 218
    :cond_7
    iput-object v4, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_requestType:Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_usersController:Lcom/scoreloop/client/android/core/controller/UsersController;

    if-ne p1, v6, :cond_0

    .line 223
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->_usersController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/controller/UsersController;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 224
    .local v5, users:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/User;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->showSpinner()V

    .line 226
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getSessionUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v7

    new-instance v8, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$1;

    invoke-direct {v8, p0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$1;-><init>(Lcom/scoreloop/client/android/ui/component/user/UserListActivity;)V

    invoke-static {p0, v6, v7, v8}, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->addBuddy(Lcom/scoreloop/client/android/ui/framework/BaseActivity;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/ui/framework/ValueStore;Lcom/scoreloop/client/android/core/model/Continuation;)V

    goto/16 :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
