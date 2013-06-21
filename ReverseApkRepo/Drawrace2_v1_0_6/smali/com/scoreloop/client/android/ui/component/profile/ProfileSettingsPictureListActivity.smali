.class public Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "ProfileSettingsPictureListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;
.implements Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$PictureListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;",
        "Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;",
        "Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;"
    }
.end annotation


# static fields
.field private static final PICK_PICTURE:I = 0x1


# instance fields
.field private _continuation:Ljava/lang/Runnable;

.field private _deviceLibraryItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

.field private _facebookItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

.field private _setDefaultItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

.field private _twitterItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

.field private _user:Lcom/scoreloop/client/android/core/model/User;

.field private _userController:Lcom/scoreloop/client/android/core/controller/UserController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_deviceLibraryItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_facebookItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_twitterItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_setDefaultItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->startSubmitPicture(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$500(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->pickSocialPicture(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;)Lcom/scoreloop/client/android/core/controller/UserController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->hideSpinnerFor(Ljava/lang/Object;)V

    return-void
.end method

.method private pickDefaultPicture()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_user:Lcom/scoreloop/client/android/core/model/User;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ImageSource;->IMAGE_SOURCE_DEFAULT:Lcom/scoreloop/client/android/core/model/ImageSource;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/User;->setImageSource(Lcom/scoreloop/client/android/core/model/ImageSource;)V

    .line 126
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/UserController;->submitUser()V

    .line 128
    return-void
.end method

.method private pickDeviceLibraryPicture()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "windowTitle"

    const v2, 0x7f08027f

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private pickSocialPicture(Ljava/lang/String;)V
    .locals 2
    .parameter "socialProviderIdentifier"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_user:Lcom/scoreloop/client/android/core/model/User;

    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getSocialProviderForIdentifier(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/User;->setImageSource(Lcom/scoreloop/client/android/core/model/ImageSource;)V

    .line 143
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/UserController;->submitUser()V

    .line 145
    return-void
.end method

.method private startSubmitPicture(Landroid/net/Uri;)V
    .locals 4
    .parameter "localImageUri"

    .prologue
    .line 184
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 187
    :try_start_0
    new-instance v1, Lcom/scoreloop/client/android/core/addon/AndroidImage;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/scoreloop/client/android/core/addon/AndroidImage;-><init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 188
    .local v1, image:Lcom/scoreloop/client/android/core/model/Image;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_user:Lcom/scoreloop/client/android/core/model/User;

    new-instance v3, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$3;

    invoke-direct {v3, p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$3;-><init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;)V

    invoke-virtual {v2, v1, v3}, Lcom/scoreloop/client/android/core/model/User;->assignImage(Lcom/scoreloop/client/android/core/model/Image;Lcom/scoreloop/client/android/core/model/Continuation;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v1           #image:Lcom/scoreloop/client/android/core/model/Image;
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e1:Ljava/io/FileNotFoundException;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->hideSpinnerFor(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private withConnectedProvider(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "socialProviderIdentifier"
    .parameter "runnable"

    .prologue
    .line 205
    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getSocialProviderForIdentifier(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v0

    .line 206
    .local v0, socialProvider:Lcom/scoreloop/client/android/core/model/SocialProvider;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/core/model/SocialProvider;->isUserConnected(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 215
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-static {v2, p0, v0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->getSocialProviderController(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;Lcom/scoreloop/client/android/core/model/SocialProvider;)Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    move-result-object v1

    .line 211
    .local v1, socialProviderController:Lcom/scoreloop/client/android/core/controller/SocialProviderController;
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_continuation:Ljava/lang/Runnable;

    .line 212
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {v1, p0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->connect(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 77
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$1;

    invoke-direct {v1, p0, p3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$1;-><init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    const v2, 0x7f020050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f080284

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_deviceLibraryItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    .line 95
    new-instance v1, Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    const v2, 0x7f020051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f080292

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.facebook.v1"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_facebookItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    .line 97
    new-instance v1, Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    const v2, 0x7f020066

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f080318

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.twitter.v1"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_twitterItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    .line 99
    new-instance v1, Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    const v2, 0x7f020067

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f080308

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_setDefaultItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    .line 101
    new-instance v1, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$PictureListAdapter;

    invoke-direct {v1, p0, p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$PictureListAdapter;-><init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_user:Lcom/scoreloop/client/android/core/model/User;

    .line 103
    new-instance v1, Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/core/controller/UserController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    .line 104
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_user:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/UserController;->setUser(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 105
    return-void
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_deviceLibraryItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    if-ne p1, v1, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->pickDeviceLibraryPicture()V

    .line 122
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 111
    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_setDefaultItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    if-ne p1, v1, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->pickDefaultPicture()V

    goto :goto_0

    .line 113
    :cond_2
    instance-of v1, p1, Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    if-eqz v1, :cond_0

    .line 114
    check-cast p1, Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    .end local p1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;->getSocialProviderIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, socialProviderIdentifier:Ljava/lang/String;
    new-instance v1, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$2;-><init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->withConnectedProvider(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected requestControllerDidFailSafe(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 3
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->requestControllerDidFailSafe(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    .line 150
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "userImageUrl"

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_user:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 3
    .parameter "controller"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "userImageUrl"

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_user:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->hideSpinnerFor(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public socialProviderControllerDidCancel(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->hideSpinnerFor(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public socialProviderControllerDidEnterInvalidCredentials(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 166
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Credentials"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->socialProviderControllerDidFail(Lcom/scoreloop/client/android/core/controller/SocialProviderController;Ljava/lang/Throwable;)V

    .line 167
    return-void
.end method

.method public socialProviderControllerDidFail(Lcom/scoreloop/client/android/core/controller/SocialProviderController;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "controller"
    .parameter "error"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->hideSpinnerFor(Ljava/lang/Object;)V

    .line 172
    const v0, 0x7f0802b2

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->getSocialProvider()Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->showToast(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public socialProviderControllerDidSucceed(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->hideSpinnerFor(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_continuation:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_continuation:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 181
    :cond_0
    return-void
.end method
