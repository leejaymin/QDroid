.class public abstract Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;
.super Lcom/scoreloop/client/android/ui/framework/BaseActivity;
.source "ComponentActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/component/base/ComponentActivityHooks;
.implements Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/base/ComponentActivity$1;,
        Lcom/scoreloop/client/android/ui/component/base/ComponentActivity$StandardRequestControllerObserver;
    }
.end annotation


# instance fields
.field private _requestControllerObserver:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;-><init>()V

    .line 44
    return-void
.end method

.method private createErrorDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "resId"

    .prologue
    const/4 v5, 0x1

    .line 64
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getTopParent()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 66
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, view:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 68
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 69
    const v2, 0x7f0c0021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 71
    return-object v0
.end method

.method public static isValueChangedFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "aKey"
    .parameter "theKey"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/base/Configuration;

    return-object v0
.end method

.method public getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "factory"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/base/Factory;

    return-object v0
.end method

.method public getGame()Lcom/scoreloop/client/android/core/model/Game;
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getGameValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    .line 84
    .local v0, gameValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getGameValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "game"

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/core/model/Game;

    .line 87
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGameValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "gameValues"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    return-object v0
.end method

.method public getManager()Lcom/scoreloop/client/android/ui/component/base/Manager;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "manager"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/base/Manager;

    return-object v0
.end method

.method public getModeForPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    .line 100
    .local v0, game:Lcom/scoreloop/client/android/core/model/Game;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->getMinMode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    add-int/2addr v1, p1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModeString(I)Ljava/lang/String;
    .locals 2
    .parameter "mode"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const-string v0, ""

    .line 107
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->getModesNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getPositionForMode(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getPositionForMode(I)I
    .locals 2
    .parameter "mode"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    .line 112
    .local v0, game:Lcom/scoreloop/client/android/core/model/Game;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->getMinMode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, p1, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getRequestControllerObserver()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->_requestControllerObserver:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity$StandardRequestControllerObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity$StandardRequestControllerObserver;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/ui/component/base/ComponentActivity$1;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->_requestControllerObserver:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->_requestControllerObserver:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    return-object v0
.end method

.method public getSession()Lcom/scoreloop/client/android/core/model/Session;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    return-object v0
.end method

.method public getSessionGameValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "sessionGameValues"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    return-object v0
.end method

.method public getSessionUser()Lcom/scoreloop/client/android/core/model/User;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getSessionUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "sessionUserValues"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    return-object v0
.end method

.method public getTracker()Lcom/scoreloop/client/android/ui/component/base/Tracker;
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "tracker"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/base/Tracker;

    return-object v0
.end method

.method public getUser()Lcom/scoreloop/client/android/core/model/User;
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/User;

    return-object v0
.end method

.method public getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "userValues"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    return-object v0
.end method

.method public isSessionGame()Z
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    .line 152
    .local v0, game:Lcom/scoreloop/client/android/core/model/Game;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Game;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSessionUser()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 157
    .local v0, user:Lcom/scoreloop/client/android/core/model/User;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getUsersTermsOfService()Lcom/scoreloop/client/android/core/model/TermsOfService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/TermsOfService;->getStatus()Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    move-result-object v2

    sget-object v3, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->ACCEPTED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    if-eq v2, v3, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Session;->isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v1

    goto :goto_0
.end method

.method public onAgentDidFail(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 1
    .parameter "agent"
    .parameter "controller"
    .parameter "error"

    .prologue
    .line 165
    instance-of v0, p3, Lcom/scoreloop/client/android/core/controller/TermsOfServiceException;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->finishDisplay()V

    .line 169
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 173
    packed-switch p1, :pswitch_data_0

    .line 177
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 175
    :pswitch_0
    const v0, 0x7f08028f

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->createErrorDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 1
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 182
    instance-of v0, p2, Lcom/scoreloop/client/android/core/controller/RequestCancelledException;

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    instance-of v0, p2, Lcom/scoreloop/client/android/core/controller/TermsOfServiceException;

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->finishDisplay()V

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->hideSpinnerFor(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->requestControllerDidFailSafe(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected requestControllerDidFailSafe(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 0
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 198
    invoke-virtual {p0, p2}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->showDialogForExceptionSafe(Ljava/lang/Exception;)V

    .line 199
    return-void
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter "aRequestController"

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->hideSpinnerFor(Ljava/lang/Object;)V

    .line 203
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->setNeedsRefresh()V

    goto :goto_0
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 0
    .parameter "aRequestController"

    .prologue
    .line 213
    return-void
.end method

.method protected showDialogForExceptionSafe(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 217
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->showDialogSafe(IZ)V

    .line 218
    return-void
.end method

.method protected showDialogSafe(IZ)V
    .locals 6
    .parameter "res"
    .parameter "saveDialogState"

    .prologue
    const/4 v5, 0x0

    .line 222
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->showDialogSafe(IZ)V

    .line 223
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getTracker()Lcom/scoreloop/client/android/ui/component/base/Tracker;

    move-result-object v0

    const-string v1, "navigation"

    const-string v2, "dialog.%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/scoreloop/client/android/ui/component/base/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    :cond_0
    return-void
.end method
