.class public Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;


# instance fields
.field private _layout:Landroid/widget/RelativeLayout;

.field protected _restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-direct {v0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    return-void
.end method


# virtual methods
.method public activity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public allowScreenToSleep()V
    .locals 0

    return-void
.end method

.method public attachUi(Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->attachUi(Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;)V

    return-void
.end method

.method public autoAttachUi()Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->None:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    return-object v0
.end method

.method public globalNavigationActivityDetails(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/MainUiTabConfiguration;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected layout()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public multitabDetails(Lcom/chillingo/crystal/utils/Reference;Ljava/util/List;Lcom/chillingo/crystal/utils/Reference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/ui/PullTabConfiguration;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->layout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, p0, p0, v1}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->onConfigurationChanged(Landroid/app/Activity;Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x400

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->setDelegate(Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;)V

    invoke-virtual {p0, v2}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->setContentView(Landroid/view/View;)V

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/chillingo/crystal/CrystalSession;->setActiveLayout(Landroid/widget/RelativeLayout;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->setCurrentActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->setContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0, p0, p1, p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->onActivityCreate(Landroid/app/Activity;Landroid/os/Bundle;Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "CrystalBaseActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v5, :cond_0

    const-string v0, "Low Memory"

    const-string v1, "CrystalBaseActivity low memory triggered"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v5, :cond_1

    const-string v0, "Low Memory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Memory threshold is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v5, :cond_2

    const-string v0, "Low Memory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available Memory is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->receivedMemoryWarning()V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v5, :cond_3

    const-string v0, "Low Memory"

    const-string v2, "Released cache"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v5, :cond_4

    const-string v0, "Low Memory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available Memory after cache free"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->onActivityPause()V

    invoke-static {}, Lcom/chillingo/crystal/CrystalSession;->onActivityPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->stopScreenSleeping()V

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/chillingo/crystal/CrystalSession;->setActiveLayout(Landroid/widget/RelativeLayout;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->setCurrentActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/chillingo/crystal/CrystalSession;->onActivityResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "CrystalBaseActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->saveStateToBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public padtabDetails(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/MainUiTabConfiguration;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public pulltabDetails(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/PullTabConfiguration;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected setGameView(I)Landroid/view/View;
    .locals 2

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->setGameView(Landroid/view/View;)V

    return-object v0
.end method

.method protected setGameView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->layout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setRestorable(Lcom/chillingo/crystal/ui/restorable/IRestorableUi;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->setUi(Lcom/chillingo/crystal/ui/restorable/IRestorableUi;)V

    return-void
.end method

.method public stopScreenSleeping()V
    .locals 0

    return-void
.end method
