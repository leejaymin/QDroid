.class public Lstericson/busybox/donate/Activity/MainActivity;
.super Lstericson/busybox/donate/Activity/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lstericson/busybox/donate/interfaces/CallBack;
.implements Lstericson/busybox/donate/interfaces/Choice;


# static fields
.field private static final INSTALL:I = 0x1

.field private static final RESTORE:I = 0x2

.field private static final UNINSTALL:I


# instance fields
.field private adapter:Lstericson/busybox/donate/adapter/PageAdapter;

.field private clean:Z

.field private custom:Ljava/lang/String;

.field private freespace:Landroid/widget/TextView;

.field private header:Landroid/widget/TextView;

.field private indicator:Lcom/viewpagerindicator/TitlePageIndicator;

.field private install:Landroid/widget/Button;

.field private installed:Z

.field private listView:Landroid/widget/ListView;

.field private pager:Landroid/support/v4/view/ViewPager;

.field public position:I

.field private restore:Landroid/widget/Button;

.field private uninstall:Landroid/widget/Button;

.field public view1:Landroid/widget/TextView;

.field public view2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lstericson/busybox/donate/Activity/BaseActivity;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->custom:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lstericson/busybox/donate/Activity/MainActivity;->installed:Z

    .line 67
    iput-boolean v1, p0, Lstericson/busybox/donate/Activity/MainActivity;->clean:Z

    .line 42
    return-void
.end method


# virtual methods
.method public choiceMade(ZI)V
    .locals 4
    .parameter "choice"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 390
    if-nez p2, :cond_1

    .line 392
    if-eqz p1, :cond_0

    .line 394
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->uninstall:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/MainActivity;->stopGatherInformation()V

    .line 398
    new-instance v0, Lstericson/busybox/donate/jobs/UninstallJob;

    invoke-direct {v0, p0}, Lstericson/busybox/donate/jobs/UninstallJob;-><init>(Lstericson/busybox/donate/Activity/MainActivity;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/jobs/UninstallJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 403
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Lstericson/busybox/donate/App;->setSmartInstall(Z)V

    .line 404
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/MainActivity;->stopGatherInformation()V

    .line 406
    const-wide/16 v0, 0x640

    invoke-static {v0, v1}, Lcom/stericson/RootTools/RootTools;->hasEnoughSpaceOnSdCard(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/App;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/App;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->install:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 411
    new-instance v0, Lstericson/busybox/donate/jobs/InstallJob;

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {v1}, Lstericson/busybox/donate/App;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v2

    invoke-virtual {v2}, Lstericson/busybox/donate/App;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lstericson/busybox/donate/jobs/InstallJob;-><init>(Lstericson/busybox/donate/Activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/jobs/InstallJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 415
    :cond_2
    const-string v0, "An unexpected error has occured, please take a screenshot of the application and send it to me at StericDroid@gmail.com"

    invoke-virtual {p0, v0, v3, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_0

    .line 420
    :cond_3
    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_0

    .line 423
    :cond_4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 425
    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/MainActivity;->stopGatherInformation()V

    .line 428
    new-instance v0, Lstericson/busybox/donate/jobs/RestoreBackup;

    invoke-direct {v0, p0}, Lstericson/busybox/donate/jobs/RestoreBackup;-><init>(Lstericson/busybox/donate/Activity/MainActivity;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/jobs/RestoreBackup;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public close(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 488
    invoke-super {p0, p1}, Lstericson/busybox/donate/Activity/BaseActivity;->close(Landroid/view/View;)V

    .line 494
    return-void
.end method

.method public gatherInformation([Ljava/lang/String;)V
    .locals 2
    .parameter "applets"

    .prologue
    .line 436
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lstericson/busybox/donate/services/AppletService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "applets"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-virtual {p0, v0}, Lstericson/busybox/donate/Activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 443
    invoke-virtual {p0, v0}, Lstericson/busybox/donate/Activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 444
    return-void
.end method

.method public getClean()Z
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->clean:Z

    return v0
.end method

.method public getCustomPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->custom:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeSpace()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->freespace:Landroid/widget/TextView;

    return-object v0
.end method

.method public getInstalled()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->installed:Z

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public initiatePager()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 113
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 115
    const v0, 0x7f050018

    invoke-virtual {p0, v0}, Lstericson/busybox/donate/Activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 116
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lstericson/busybox/donate/Activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TitlePageIndicator;

    iput-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    .line 118
    new-instance v0, Lstericson/busybox/donate/adapter/PageAdapter;

    invoke-direct {v0, p0}, Lstericson/busybox/donate/adapter/PageAdapter;-><init>(Lstericson/busybox/donate/Activity/MainActivity;)V

    iput-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->adapter:Lstericson/busybox/donate/adapter/PageAdapter;

    .line 119
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    new-instance v1, Lstericson/busybox/donate/listeners/PageChange;

    iget-object v2, p0, Lstericson/busybox/donate/Activity/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0, v2}, Lstericson/busybox/donate/listeners/PageChange;-><init>(Lstericson/busybox/donate/Activity/MainActivity;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 120
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lstericson/busybox/donate/Activity/MainActivity;->adapter:Lstericson/busybox/donate/adapter/PageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 121
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    iget-object v1, p0, Lstericson/busybox/donate/Activity/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 122
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 123
    iput v3, p0, Lstericson/busybox/donate/Activity/MainActivity;->position:I

    .line 125
    :cond_0
    return-void
.end method

.method public install(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 129
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/App;->getItemList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 131
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/MainActivity;->stopGatherInformation()V

    .line 133
    const-wide/16 v0, 0x640

    invoke-static {v0, v1}, Lcom/stericson/RootTools/RootTools;->hasEnoughSpaceOnSdCard(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/App;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/App;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->install:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    new-instance v0, Lstericson/busybox/donate/jobs/InstallJob;

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {v1}, Lstericson/busybox/donate/App;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v2

    invoke-virtual {v2}, Lstericson/busybox/donate/App;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lstericson/busybox/donate/jobs/InstallJob;-><init>(Lstericson/busybox/donate/Activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/jobs/InstallJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v0, "An unexpected error has occured, please take a screenshot of the application and send it to me at StericDroid@gmail.com"

    invoke-virtual {p0, v0, v3, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_0

    .line 147
    :cond_1
    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_0

    .line 152
    :cond_2
    const v3, 0x7f0b004b

    const v4, 0x7f0b004e

    const v5, 0x7f0b004d

    const v6, 0x7f0b004c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lstericson/busybox/donate/Activity/MainActivity;->makeChoice(Lstericson/busybox/donate/interfaces/Choice;IIIII)V

    goto :goto_0
.end method

.method public installAppletDone(Lstericson/busybox/donate/domain/Result;ILandroid/widget/AdapterView;Ljava/lang/String;)V
    .locals 11
    .parameter "result"
    .parameter "position"
    .parameter
    .parameter "applet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lstericson/busybox/donate/domain/Result;",
            "I",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 273
    .local p3, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p4, v6, v7

    invoke-virtual {p0, v6}, Lstericson/busybox/donate/Activity/MainActivity;->gatherInformation([Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 277
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v6

    invoke-virtual {v6}, Lstericson/busybox/donate/App;->getItemList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lstericson/busybox/donate/domain/Item;

    .line 279
    .local v4, item:Lstericson/busybox/donate/domain/Item;
    const-string v6, "/system/xbin"

    invoke-virtual {v4, v6}, Lstericson/busybox/donate/domain/Item;->setAppletPath(Ljava/lang/String;)V

    .line 280
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lstericson/busybox/donate/domain/Item;->setFound(Z)V

    .line 281
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lstericson/busybox/donate/domain/Item;->setOverwrite(Z)V

    .line 282
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lstericson/busybox/donate/domain/Item;->setRecommend(Z)V

    .line 283
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lstericson/busybox/donate/domain/Item;->setRemove(Z)V

    .line 284
    const-string v6, ""

    invoke-virtual {v4, v6}, Lstericson/busybox/donate/domain/Item;->setSymlinkedTo(Ljava/lang/String;)V

    .line 288
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v5, result1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lstericson/busybox/donate/Activity/MainActivity$2;

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "busybox "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " --help"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v1, p0, v6, v7, v5}, Lstericson/busybox/donate/Activity/MainActivity$2;-><init>(Lstericson/busybox/donate/Activity/MainActivity;I[Ljava/lang/String;Ljava/util/List;)V

    .line 303
    .local v1, command:Lcom/stericson/RootTools/Command;
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v6

    invoke-virtual {v6}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    .line 305
    const-string v0, ""

    .line 307
    .local v0, appletInfo:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 315
    invoke-virtual {v4, v0}, Lstericson/busybox/donate/domain/Item;->setDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v0           #appletInfo:Ljava/lang/String;
    .end local v1           #command:Lcom/stericson/RootTools/Command;
    .end local v5           #result1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/MainActivity;->updateList()V

    .line 324
    const-string v6, "Congratulations! The applet was installed successfully!"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 330
    .end local v4           #item:Lstericson/busybox/donate/domain/Item;
    :goto_2
    return-void

    .line 307
    .restart local v0       #appletInfo:Ljava/lang/String;
    .restart local v1       #command:Lcom/stericson/RootTools/Command;
    .restart local v4       #item:Lstericson/busybox/donate/domain/Item;
    .restart local v5       #result1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 309
    .local v3, info:Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "multi-call binary"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 311
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 317
    .end local v0           #appletInfo:Ljava/lang/String;
    .end local v1           #command:Lcom/stericson/RootTools/Command;
    .end local v3           #info:Ljava/lang/String;
    .end local v5           #result1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 319
    .local v2, e:Ljava/lang/Exception;
    const v6, 0x7f0b003d

    invoke-virtual {p0, v6}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lstericson/busybox/donate/domain/Item;->setDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 328
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #item:Lstericson/busybox/donate/domain/Item;
    :cond_2
    const-string v6, "Uh Oh! The applet was not installed successfully!"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_2
.end method

.method public installDone(Lstericson/busybox/donate/domain/Result;)V
    .locals 8
    .parameter "install_result"

    .prologue
    const v7, 0x7f0b0025

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 206
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v3

    invoke-virtual {v3}, Lstericson/busybox/donate/App;->getCurrentVersion()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, currentVersion:Ljava/lang/String;
    sget-object v3, Lstericson/busybox/donate/Constants;->appletsString:[Ljava/lang/String;

    invoke-virtual {p0, v3}, Lstericson/busybox/donate/Activity/MainActivity;->gatherInformation([Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 212
    iget-object v3, p0, Lstericson/busybox/donate/Activity/MainActivity;->install:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 214
    iget-object v3, p0, Lstericson/busybox/donate/Activity/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 216
    const-string v3, "/system"

    const-string v4, "ro"

    invoke-static {v3, v4}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    const-string v3, "busybox"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v1

    .line 220
    .local v1, result:Z
    if-eqz v1, :cond_5

    .line 222
    iget-object v3, p0, Lstericson/busybox/donate/Activity/MainActivity;->uninstall:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getBusyBoxVersion()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, thisVersion:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 228
    const-string v2, ""

    .line 231
    :cond_0
    if-nez v0, :cond_1

    .line 233
    const-string v0, "-1"

    .line 236
    :cond_1
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v3

    invoke-virtual {v3}, Lstericson/busybox/donate/App;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "busybox"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    invoke-virtual {p0, v7}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 268
    .end local v1           #result:Z
    .end local v2           #thisVersion:Ljava/lang/String;
    :goto_0
    return-void

    .line 244
    .restart local v1       #result:Z
    .restart local v2       #thisVersion:Ljava/lang/String;
    :cond_2
    const v3, 0x7f0b0026

    invoke-virtual {p0, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_0

    .line 249
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 251
    invoke-virtual {p0, v7}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_0

    .line 255
    :cond_4
    const v3, 0x7f0b0029

    invoke-virtual {p0, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_0

    .line 261
    .end local v2           #thisVersion:Ljava/lang/String;
    :cond_5
    const v3, 0x7f0b0007

    invoke-virtual {p0, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_0

    .line 266
    .end local v1           #result:Z
    :cond_6
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->getError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_0
.end method

.method public jobCallBack(Lstericson/busybox/donate/domain/Result;I)V
    .locals 4
    .parameter "result"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 358
    sget v0, Lstericson/busybox/donate/jobs/InitialChecks;->Checks:I

    if-ne p2, v0, :cond_2

    .line 360
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 363
    :cond_0
    new-instance v0, Lstericson/busybox/donate/services/DBService;

    invoke-direct {v0, p0}, Lstericson/busybox/donate/services/DBService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lstericson/busybox/donate/services/DBService;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    const-string v0, "Hello, welcome to BusyBox Pro. \n\n It looks like the initial setup has not be completed yet. The initial setup will take a bit longer than BusyBox free the first time it is run because we are making a backup of your system as well as doing some additional checks on your system. \n\n After this initial setup is complete, startup times should be very fast. \n\n Thanks for your patience."

    invoke-virtual {p0, v0, v2, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 366
    :cond_1
    new-instance v0, Lstericson/busybox/donate/jobs/GatherAppletInformation;

    invoke-direct {v0, p0, v2}, Lstericson/busybox/donate/jobs/GatherAppletInformation;-><init>(Lstericson/busybox/donate/Activity/MainActivity;Z)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/jobs/GatherAppletInformation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 368
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePager()V

    .line 370
    :cond_2
    sget v0, Lstericson/busybox/donate/jobs/GatherAppletInformation;->APPLET_INFO:I

    if-ne p2, v0, :cond_3

    .line 372
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/App;->setItemList(Ljava/util/List;)V

    .line 373
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lstericson/busybox/donate/Activity/MainActivity;->adapter:Lstericson/busybox/donate/adapter/PageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 374
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lstericson/busybox/donate/Activity/MainActivity;->position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 376
    sget-object v0, Lstericson/busybox/donate/Constants;->appletsString:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lstericson/busybox/donate/Activity/MainActivity;->gatherInformation([Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->restore:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 380
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->uninstall:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 385
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-super {p0, p1}, Lstericson/busybox/donate/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lstericson/busybox/donate/Activity/MainActivity;->requestWindowFeature(I)Z

    .line 75
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lstericson/busybox/donate/Activity/MainActivity;->setContentView(I)V

    .line 77
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/App;->setItemList(Ljava/util/List;)V

    .line 79
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/MainActivity;->randomAnimation()V

    .line 81
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/MainActivity;->stopGatherInformation()V

    .line 83
    const v2, 0x7f05001a

    invoke-virtual {p0, v2}, Lstericson/busybox/donate/Activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lstericson/busybox/donate/Activity/MainActivity;->install:Landroid/widget/Button;

    .line 84
    const v2, 0x7f050019

    invoke-virtual {p0, v2}, Lstericson/busybox/donate/Activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lstericson/busybox/donate/Activity/MainActivity;->uninstall:Landroid/widget/Button;

    .line 85
    const v2, 0x7f05001b

    invoke-virtual {p0, v2}, Lstericson/busybox/donate/Activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lstericson/busybox/donate/Activity/MainActivity;->restore:Landroid/widget/Button;

    .line 87
    const v2, 0x7f05000e

    invoke-virtual {p0, v2}, Lstericson/busybox/donate/Activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lstericson/busybox/donate/Activity/MainActivity;->header:Landroid/widget/TextView;

    .line 88
    iget-object v2, p0, Lstericson/busybox/donate/Activity/MainActivity;->header:Landroid/widget/TextView;

    iget-object v3, p0, Lstericson/busybox/donate/Activity/MainActivity;->tf:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    new-instance v2, Lstericson/busybox/donate/jobs/InitialChecks;

    invoke-direct {v2, p0}, Lstericson/busybox/donate/jobs/InitialChecks;-><init>(Lstericson/busybox/donate/Activity/MainActivity;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/jobs/InitialChecks;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    const v2, 0x7f05000f

    invoke-virtual {p0, v2}, Lstericson/busybox/donate/Activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 93
    .local v0, autoupdate:Landroid/widget/CheckBox;
    const-string v2, "BusyBox"

    invoke-virtual {p0, v2, v4}, Lstericson/busybox/donate/Activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 94
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "auto-update"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    new-instance v2, Lstericson/busybox/donate/Activity/MainActivity$1;

    invoke-direct {v2, p0, v1}, Lstericson/busybox/donate/Activity/MainActivity$1;-><init>(Lstericson/busybox/donate/Activity/MainActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    return-void
.end method

.method public restore(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const v3, 0x7f0b002e

    .line 163
    const/4 v2, 0x2

    const v4, 0x7f0b002f

    const v6, 0x7f0b0048

    move-object v0, p0

    move-object v1, p0

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lstericson/busybox/donate/Activity/MainActivity;->makeChoice(Lstericson/busybox/donate/interfaces/Choice;IIIII)V

    .line 164
    return-void
.end method

.method public restoreDone(Lstericson/busybox/donate/domain/Result;)V
    .locals 2
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_0
.end method

.method public setClean(Z)V
    .locals 0
    .parameter "clean"

    .prologue
    .line 533
    iput-boolean p1, p0, Lstericson/busybox/donate/Activity/MainActivity;->clean:Z

    .line 534
    return-void
.end method

.method public setCustomPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 518
    iput-object p1, p0, Lstericson/busybox/donate/Activity/MainActivity;->custom:Ljava/lang/String;

    .line 519
    return-void
.end method

.method public setFreeSpace(Landroid/widget/TextView;)V
    .locals 0
    .parameter "space"

    .prologue
    .line 523
    iput-object p1, p0, Lstericson/busybox/donate/Activity/MainActivity;->freespace:Landroid/widget/TextView;

    .line 524
    return-void
.end method

.method public setInstalled(Z)V
    .locals 0
    .parameter "installed"

    .prologue
    .line 528
    iput-boolean p1, p0, Lstericson/busybox/donate/Activity/MainActivity;->installed:Z

    .line 529
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0
    .parameter "listView"

    .prologue
    .line 543
    iput-object p1, p0, Lstericson/busybox/donate/Activity/MainActivity;->listView:Landroid/widget/ListView;

    .line 544
    return-void
.end method

.method public stopGatherInformation()V
    .locals 2

    .prologue
    .line 448
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lstericson/busybox/donate/services/AppletService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lstericson/busybox/donate/Activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 453
    return-void
.end method

.method public toggle_smart(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 459
    :try_start_0
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v2

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v3

    invoke-virtual {v3}, Lstericson/busybox/donate/App;->isToggled()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Lstericson/busybox/donate/App;->setToggled(Z)V

    .line 460
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/MainActivity;->updateList()V

    .line 462
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {v1}, Lstericson/busybox/donate/App;->isToggled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    const-string v1, "Before you begin tweaking things please be aware that changing the settings and selections for smart install is for advanced users only! \n\n Some binaries found on your system should NOT be replaced by Busybox and doing so can make your device perform in an undesireable manner. The only reason you should tweak the settings below is if you know exactly what you are doing or if you know how to reflash your rom to fix issues that may occur from modifying the selections below."

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 465
    :cond_0
    iget-object v1, p0, Lstericson/busybox/donate/Activity/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    const v2, 0x7f050024

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 466
    .local v0, toggle:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {v1}, Lstericson/busybox/donate/App;->isToggled()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f020001

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v0           #toggle:Landroid/widget/ImageButton;
    :goto_2
    return-void

    .line 459
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 466
    .restart local v0       #toggle:Landroid/widget/ImageButton;
    :cond_2
    const/high16 v1, 0x7f02

    goto :goto_1

    .line 468
    .end local v0           #toggle:Landroid/widget/ImageButton;
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public uninstall(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 158
    const/4 v2, 0x0

    const v3, 0x7f0b0047

    const v4, 0x7f0b004a

    const v5, 0x7f0b0049

    const v6, 0x7f0b0048

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lstericson/busybox/donate/Activity/MainActivity;->makeChoice(Lstericson/busybox/donate/interfaces/Choice;IIIII)V

    .line 159
    return-void
.end method

.method public uninstallAppletDone(Lstericson/busybox/donate/domain/Result;ILandroid/widget/AdapterView;Ljava/lang/String;)V
    .locals 4
    .parameter "result"
    .parameter "position"
    .parameter
    .parameter "applet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lstericson/busybox/donate/domain/Result;",
            "I",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    new-array v1, v3, [Ljava/lang/String;

    aput-object p4, v1, v2

    invoke-virtual {p0, v1}, Lstericson/busybox/donate/Activity/MainActivity;->gatherInformation([Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {v1}, Lstericson/busybox/donate/App;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstericson/busybox/donate/domain/Item;

    .line 340
    .local v0, item:Lstericson/busybox/donate/domain/Item;
    const-string v1, ""

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/domain/Item;->setAppletPath(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0, v2}, Lstericson/busybox/donate/domain/Item;->setFound(Z)V

    .line 342
    invoke-virtual {v0, v2}, Lstericson/busybox/donate/domain/Item;->setOverwrite(Z)V

    .line 343
    invoke-virtual {v0, v3}, Lstericson/busybox/donate/domain/Item;->setRecommend(Z)V

    .line 344
    invoke-virtual {v0, v2}, Lstericson/busybox/donate/domain/Item;->setRemove(Z)V

    .line 345
    const-string v1, ""

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/domain/Item;->setDescription(Ljava/lang/String;)V

    .line 346
    const-string v1, ""

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/domain/Item;->setSymlinkedTo(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/MainActivity;->updateList()V

    .line 349
    const-string v1, "Congratulations! The applet was uninstalled successfully!"

    invoke-virtual {p0, v1, v2, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 355
    .end local v0           #item:Lstericson/busybox/donate/domain/Item;
    :goto_0
    return-void

    .line 353
    :cond_0
    const-string v1, "Uh Oh! The applet was not uninstalled successfully!"

    invoke-virtual {p0, v1, v2, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_0
.end method

.method public uninstallDone(Lstericson/busybox/donate/domain/Result;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 168
    sget-object v0, Lstericson/busybox/donate/Constants;->appletsString:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lstericson/busybox/donate/Activity/MainActivity;->gatherInformation([Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 175
    :cond_0
    const-string v0, "/system"

    const-string v1, "ro"

    invoke-static {v0, v1}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 177
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 190
    :goto_0
    return-void

    .line 183
    :cond_1
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, p0}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 475
    :try_start_0
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/App;->getAppletadapter()Lstericson/busybox/donate/adapter/AppletAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/adapter/AppletAdapter;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    :goto_0
    :try_start_1
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/App;->getTuneadapter()Lstericson/busybox/donate/adapter/TuneAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/adapter/TuneAdapter;->update()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 484
    :goto_1
    return-void

    .line 483
    :catch_0
    move-exception v0

    goto :goto_1

    .line 477
    :catch_1
    move-exception v0

    goto :goto_0
.end method
