.class public Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "ProfileSettingsListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;,
        Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$UserProfileListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;",
        "Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;",
        "Landroid/content/DialogInterface$OnDismissListener;"
    }
.end annotation


# static fields
.field private static final STATE_ERRORMESSAGE:Ljava/lang/String; = "errorMessage"

.field private static final STATE_ERRORTITLE:Ljava/lang/String; = "errorTitle"

.field private static final STATE_HINT:Ljava/lang/String; = "hint"

.field private static final STATE_LASTREQUESTTYPE:Ljava/lang/String; = "lastRequestType"

.field private static final STATE_LASTUPDATEERROR:Ljava/lang/String; = "lastUpdateError"

.field private static final STATE_RESTOREEMAIL:Ljava/lang/String; = "restoreEmail"


# instance fields
.field private _changeEmailItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

.field private _changePictureItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

.field private _changeUsernameItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

.field private _errorMessage:Ljava/lang/String;

.field private _errorTitle:Ljava/lang/String;

.field private _hint:Ljava/lang/String;

.field private _lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

.field private _lastUpdateError:Z

.field private _mergeAccountItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

.field private _restoreEmail:Ljava/lang/String;

.field private _userController:Lcom/scoreloop/client/android/core/controller/UserController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastUpdateError:Z

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_changePictureItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_changeUsernameItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_changeEmailItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_mergeAccountItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->isValidEmailFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->updateUser(Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)V

    return-void
.end method

.method static synthetic access$700(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Lcom/scoreloop/client/android/core/controller/UserController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    return-void
.end method

.method private getActionSettings(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)Ljava/lang/String;
    .locals 1
    .parameter "requestType"

    .prologue
    .line 416
    sget-object v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->EMAIL:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const-string v0, "result.change-email"

    .line 425
    :goto_0
    return-object v0

    .line 418
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->USERNAME:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    const-string v0, "result.change-username"

    goto :goto_0

    .line 420
    :cond_1
    sget-object v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->USERNAME_EMAIL:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    const-string v0, "result.change-username-firsttime"

    goto :goto_0

    .line 422
    :cond_2
    sget-object v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->MERGE_ACCOUNTS:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    const-string v0, "result.merge-account"

    goto :goto_0

    .line 425
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getChangeEmailDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 155
    new-instance v0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;

    const v1, 0x7f08027b

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f080282

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0802dc

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v0, dialog:Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;
    new-instance v1, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$1;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$1;-><init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setOnActionListener(Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;)V

    .line 174
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 175
    return-object v0
.end method

.method private getChangeUsernameDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 208
    new-instance v0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;

    const v1, 0x7f08027e

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f080282

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0802dc

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v0, dialog:Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;
    new-instance v1, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$3;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$3;-><init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setOnActionListener(Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;)V

    .line 220
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 221
    return-object v0
.end method

.method private getFirstTimeDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getLogin()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    .local v0, dialog:Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;
    new-instance v1, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$4;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$4;-><init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->setOnActionListener(Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;)V

    .line 291
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 292
    return-object v0
.end method

.method private getMergeAccountDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 179
    new-instance v0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;

    const v1, 0x7f0802d4

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0802d6

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v0, dialog:Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;
    new-instance v1, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$2;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$2;-><init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setOnActionListener(Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;)V

    .line 203
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 204
    return-object v0
.end method

.method private getMsgDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, dialog:Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 151
    return-object v0
.end method

.method private isValidEmailFormat(Ljava/lang/String;)Z
    .locals 3
    .parameter "email"

    .prologue
    .line 449
    const-string v2, ".+@.+\\.[a-z]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 450
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 451
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private restoreUserState()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_restoreEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/User;->setEmailAddress(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method private saveUserState()V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_restoreEmail:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private updateUser(Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)V
    .locals 3
    .parameter "newEmail"
    .parameter "newUsername"
    .parameter "requestType"

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->saveUserState()V

    .line 456
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 457
    .local v0, user:Lcom/scoreloop/client/android/core/model/User;
    if-eqz p1, :cond_0

    .line 458
    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/User;->setEmailAddress(Ljava/lang/String;)V

    .line 460
    :cond_0
    if-eqz p2, :cond_1

    .line 461
    invoke-virtual {v0, p2}, Lcom/scoreloop/client/android/core/model/User;->setLogin(Ljava/lang/String;)V

    .line 463
    :cond_1
    invoke-virtual {p0, p3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->setLastRequestType(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)V

    .line 464
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$6;-><init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Lcom/scoreloop/client/android/core/model/User;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 297
    if-eqz p1, :cond_1

    .line 298
    const-string v0, "restoreEmail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_restoreEmail:Ljava/lang/String;

    .line 299
    const-string v0, "errorTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_errorTitle:Ljava/lang/String;

    .line 300
    const-string v0, "errorMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_errorMessage:Ljava/lang/String;

    .line 301
    const-string v0, "hint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;

    .line 302
    const-string v0, "lastRequestType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "lastRequestType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    .line 305
    :cond_0
    const-string v0, "lastUpdateError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    const-string v0, "lastUpdateError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastUpdateError:Z

    .line 310
    :cond_1
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 311
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v7

    .line 312
    .local v7, user:Lcom/scoreloop/client/android/core/model/User;
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/UserController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    .line 313
    new-instance v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f02004c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f08027c

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08027d

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_changePictureItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    .line 315
    new-instance v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f02004d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f08027e

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/model/User;->getLogin()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_changeUsernameItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    .line 317
    new-instance v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f02004b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f08027b

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/model/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_changeEmailItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    .line 319
    new-instance v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020059

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f0802d4

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802d5

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_mergeAccountItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    .line 321
    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/model/User;->getLogin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/model/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/UserController;->loadUser()V

    .line 327
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->setVisibleOptionsMenuAccountSettings(Z)V

    .line 330
    new-instance v6, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    new-instance v1, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$5;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$5;-><init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)V

    invoke-direct {v6, v0, v1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;)V

    .line 337
    .local v6, termsOfServiceController:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;
    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->isTermsOfServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;

    const v1, 0x7f080314

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f080315

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->showFooter(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V

    .line 341
    :cond_3
    return-void

    .line 325
    .end local v6           #termsOfServiceController:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;
    :cond_4
    new-instance v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$UserProfileListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$UserProfileListAdapter;-><init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 134
    :pswitch_0
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 136
    :pswitch_1
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getChangeUsernameDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getChangeEmailDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 140
    :pswitch_3
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getMergeAccountDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_4
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getFirstTimeDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 144
    :pswitch_5
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getMsgDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onFooterItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 3
    .parameter "footerItem"

    .prologue
    .line 476
    new-instance v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$7;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$7;-><init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;)V

    .line 483
    .local v0, termsOfServiceController:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->show(Landroid/app/Activity;)V

    .line 484
    return-void
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_changeUsernameItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    if-ne p1, v0, :cond_2

    .line 347
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 348
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->showDialogSafe(IZ)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->showDialogSafe(IZ)V

    goto :goto_0

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_changePictureItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    if-ne p1, v0, :cond_3

    .line 353
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createProfileSettingsPictureScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_changeEmailItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    if-ne p1, v0, :cond_4

    .line 355
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->showDialogSafe(IZ)V

    goto :goto_0

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_mergeAccountItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    if-ne p1, v0, :cond_0

    .line 357
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->showDialogSafe(IZ)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 9
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v8, 0x0

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 258
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 261
    :cond_0
    :goto_0
    instance-of v6, p2, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;

    if-eqz v6, :cond_5

    move-object v2, p2

    .line 262
    check-cast v2, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;

    .line 263
    .local v2, errorDialog:Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_errorMessage:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->setText(Ljava/lang/String;)V

    .line 264
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_errorTitle:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->setTitle(Ljava/lang/String;)V

    .line 270
    .end local v2           #errorDialog:Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;
    :cond_1
    :goto_1
    return-void

    :pswitch_1
    move-object v3, p2

    .line 228
    check-cast v3, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;

    .line 229
    .local v3, firstTimeDialog:Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->setHint(Ljava/lang/String;)V

    goto :goto_0

    .end local v3           #firstTimeDialog:Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;
    :pswitch_2
    move-object v1, p2

    .line 232
    check-cast v1, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;

    .line 233
    .local v1, changeUsernameDialog:Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/model/User;->getLogin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setCurrentText(Ljava/lang/String;)V

    .line 234
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setHint(Ljava/lang/String;)V

    .line 236
    iget-boolean v6, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastUpdateError:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->USERNAME:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    iget-object v7, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-virtual {v6, v7}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 237
    :cond_2
    invoke-virtual {v1, v8}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setEditText(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #changeUsernameDialog:Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;
    :pswitch_3
    move-object v0, p2

    .line 241
    check-cast v0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;

    .line 242
    .local v0, changeEmailDialog:Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setHint(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/model/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setCurrentText(Ljava/lang/String;)V

    .line 245
    iget-boolean v6, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastUpdateError:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->EMAIL:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    iget-object v7, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-virtual {v6, v7}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 246
    :cond_3
    invoke-virtual {v0, v8}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setEditText(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #changeEmailDialog:Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;
    :pswitch_4
    move-object v4, p2

    .line 250
    check-cast v4, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;

    .line 251
    .local v4, mergeAccountsDialog:Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setHint(Ljava/lang/String;)V

    .line 253
    iget-boolean v6, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastUpdateError:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->MERGE_ACCOUNTS:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    iget-object v7, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-virtual {v6, v7}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 254
    :cond_4
    invoke-virtual {v4, v8}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setEditText(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    .end local v4           #mergeAccountsDialog:Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;
    :cond_5
    instance-of v6, p2, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;

    if-eqz v6, :cond_1

    move-object v5, p2

    .line 266
    check-cast v5, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;

    .line 267
    .local v5, okCancelDialog:Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_errorMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setText(Ljava/lang/String;)V

    .line 268
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_errorTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onRefresh(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_changeEmailItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;->setSubTitle(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_changeUsernameItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;->setSubTitle(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->notifyDataSetChanged()V

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getManager()Lcom/scoreloop/client/android/ui/component/base/Manager;

    move-result-object v0

    invoke-interface {v0}, Lcom/scoreloop/client/android/ui/component/base/Manager;->persistSessionUserName()V

    .line 369
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "restoreEmail"

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_restoreEmail:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "errorTitle"

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_errorTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "errorMessage"

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "hint"

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "lastRequestType"

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    const-string v0, "lastUpdateError"

    iget-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastUpdateError:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    return-void
.end method

.method protected requestControllerDidFailSafe(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 8
    .parameter "requestController"
    .parameter "exception"

    .prologue
    const/16 v7, 0x10

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 373
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->hideSpinnerFor(Ljava/lang/Object;)V

    .line 374
    instance-of v2, p2, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    invoke-virtual {v2, v7}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->hasDetail(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->MERGE_ACCOUNTS:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    const v2, 0x7f0802d7

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_errorTitle:Ljava/lang/String;

    .line 379
    const v2, 0x7f0802d8

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_errorMessage:Ljava/lang/String;

    .line 380
    invoke-virtual {p0, v5, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->showDialogSafe(IZ)V

    .line 381
    iput-boolean v6, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastUpdateError:Z

    .line 382
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getTracker()Lcom/scoreloop/client/android/ui/component/base/Tracker;

    move-result-object v2

    const-string v3, "request"

    iget-object v4, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-direct {p0, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getActionSettings(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "success"

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/component/base/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 412
    :goto_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->restoreUserState()V

    .line 413
    return-void

    .line 384
    :cond_0
    iput-boolean v4, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastUpdateError:Z

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, errorCode:I
    instance-of v2, p2, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    if-eqz v2, :cond_4

    move-object v1, p2

    .line 387
    check-cast v1, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    .line 389
    .local v1, requestException:Lcom/scoreloop/client/android/core/controller/RequestControllerException;
    invoke-virtual {v1, v7}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->hasDetail(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    const v2, 0x7f08028b

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_errorTitle:Ljava/lang/String;

    .line 391
    const v2, 0x7f08028c

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_errorMessage:Ljava/lang/String;

    .line 392
    invoke-virtual {p0, v5, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->showDialogSafe(IZ)V

    .line 393
    const/16 v0, 0x10

    .line 410
    .end local v1           #requestException:Lcom/scoreloop/client/android/core/controller/RequestControllerException;
    :goto_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getTracker()Lcom/scoreloop/client/android/ui/component/base/Tracker;

    move-result-object v2

    const-string v3, "request"

    iget-object v4, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-direct {p0, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getActionSettings(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "error"

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/scoreloop/client/android/ui/component/base/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 394
    .restart local v1       #requestException:Lcom/scoreloop/client/android/core/controller/RequestControllerException;
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->hasDetail(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    const v2, 0x7f08028e

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;

    .line 396
    const/16 v0, 0x8

    .line 397
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->getDialogId()I

    move-result v2

    invoke-virtual {p0, v2, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->showDialogSafe(IZ)V

    goto :goto_1

    .line 398
    :cond_2
    invoke-virtual {v1, v4}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->hasDetail(I)Z

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->hasDetail(I)Z

    move-result v3

    or-int/2addr v2, v3

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->hasDetail(I)Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 401
    const v2, 0x7f08028d

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;

    .line 402
    const/4 v0, 0x4

    .line 403
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->getDialogId()I

    move-result v2

    invoke-virtual {p0, v2, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->showDialogSafe(IZ)V

    goto :goto_1

    .line 405
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->requestControllerDidFailSafe(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    goto :goto_1

    .line 408
    .end local v1           #requestException:Lcom/scoreloop/client/android/core/controller/RequestControllerException;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->requestControllerDidFailSafe(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 6
    .parameter "controller"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    .line 431
    .local v0, store:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    const-string v1, "userName"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 432
    const-string v1, "userImageUrl"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 433
    new-instance v1, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$UserProfileListAdapter;

    invoke-direct {v1, p0, p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$UserProfileListAdapter;-><init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 434
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->hideSpinnerFor(Ljava/lang/Object;)V

    .line 435
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->setNeedsRefresh()V

    .line 436
    sget-object v1, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->MERGE_ACCOUNTS:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    const v1, 0x7f0802d9

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;

    .line 439
    iput-boolean v3, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastUpdateError:Z

    .line 440
    const/16 v1, 0x11

    invoke-virtual {p0, v1, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->showDialogSafe(IZ)V

    .line 441
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getTracker()Lcom/scoreloop/client/android/ui/component/base/Tracker;

    move-result-object v1

    const-string v2, "request"

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-direct {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getActionSettings(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "error"

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/scoreloop/client/android/ui/component/base/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    if-eqz v1, :cond_0

    .line 443
    iput-boolean v5, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastUpdateError:Z

    .line 444
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getTracker()Lcom/scoreloop/client/android/ui/component/base/Tracker;

    move-result-object v1

    const-string v2, "request"

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-direct {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getActionSettings(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "success"

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/scoreloop/client/android/ui/component/base/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setLastRequestType(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)V
    .locals 0
    .parameter "lastRequestType"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_lastRequestType:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    .line 128
    return-void
.end method
