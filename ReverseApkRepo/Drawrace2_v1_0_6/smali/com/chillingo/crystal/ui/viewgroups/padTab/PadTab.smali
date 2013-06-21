.class public Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chillingo/crystal/ui/restorable/IRestorableUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;
    }
.end annotation


# instance fields
.field private _inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

.field private _isCleanedUp:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_isCleanedUp:Z

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;-><init>(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;)Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_isCleanedUp:Z

    return v0
.end method

.method static synthetic access$502(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_isCleanedUp:Z

    return p1
.end method


# virtual methods
.method public attachToView()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->attachTabs(Landroid/widget/RelativeLayout;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public detachFromView(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->cleanup()V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/PrivateSession;->setNavController(Lcom/chillingo/crystal/NavigationController;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->setState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->deactivateCrystalUi()V

    :cond_0
    iput-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    :cond_1
    return-void
.end method

.method public navigationController()Lcom/chillingo/crystal/NavigationController;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    return-object v0
.end method

.method public restoreStateFromBundle(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->detachFromView(Z)V

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;-><init>(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    new-instance v2, Lcom/chillingo/crystal/NavigationController;

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    const-string v0, "navigationcontroller"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationState;

    invoke-direct {v2, v3, v0}, Lcom/chillingo/crystal/NavigationController;-><init>(Lcom/chillingo/crystal/INavigationControllerDelegate;Lcom/chillingo/crystal/NavigationState;)V

    iput-object v2, v1, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v4, v4}, Lcom/chillingo/crystal/NavigationController;->setPreloadTab(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "buttonpressedrect"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v6, :cond_0

    const-string v0, "l"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "t"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "r"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "b"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    #setter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;
    invoke-static {v4, v5}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$702(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->attachTabs(Landroid/widget/RelativeLayout;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "uistate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v1, v1, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->peekHistoryItem()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v2, v2, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v2, v1, v6}, Lcom/chillingo/crystal/NavigationController;->pushPullTabViewInTab(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->setState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public saveStateToBundle(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    if-eqz v0, :cond_0

    const-string v0, "navigationcontroller"

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v1, v1, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->currentState()Lcom/chillingo/crystal/NavigationState;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "uistate"

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_pullTabState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$600(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$700(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "buttonpressedrect"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "l"

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$700(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "t"

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$700(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "r"

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$700(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "b"

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$700(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "buttonpressedrect"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public ui()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    return-object v0
.end method

.method public wantsToSaveState()Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
