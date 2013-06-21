.class public Lstericson/busybox/donate/listeners/PageChange;
.super Ljava/lang/Object;
.source "PageChange.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lstericson/busybox/donate/interfaces/CallBack;


# instance fields
.field private context:Lstericson/busybox/donate/Activity/MainActivity;


# direct methods
.method public constructor <init>(Lstericson/busybox/donate/Activity/MainActivity;Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .parameter "context"
    .parameter "view"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    .line 21
    return-void
.end method


# virtual methods
.method public jobCallBack(Lstericson/busybox/donate/domain/Result;I)V
    .locals 5
    .parameter "result"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 40
    if-ne p2, v2, :cond_3

    .line 42
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->getLocations()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    .line 44
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->getLocations()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v2, 0x7f0b0011

    invoke-virtual {v0, v2}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lstericson/busybox/donate/App;->setFound(Ljava/lang/String;)V

    .line 51
    :goto_1
    iget-object v0, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v0}, Lstericson/busybox/donate/Activity/MainActivity;->updateList()V

    .line 52
    invoke-static {}, Lstericson/busybox/donate/adapter/PageAdapter;->updateBusyboxInformation()V

    .line 62
    :cond_0
    :goto_2
    return-void

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v2

    invoke-virtual {v2}, Lstericson/busybox/donate/App;->getCurrentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->getLocations()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    const-string v1, "Location of Busybox could not be determined."

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/App;->setFound(Ljava/lang/String;)V

    goto :goto_1

    .line 54
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 56
    new-instance v0, Lstericson/busybox/donate/jobs/GetLocations;

    iget-object v1, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-direct {v0, v1, p0, v2}, Lstericson/busybox/donate/jobs/GetLocations;-><init>(Lstericson/busybox/donate/Activity/MainActivity;Lstericson/busybox/donate/interfaces/CallBack;Z)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/jobs/GetLocations;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 58
    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 60
    iget-object v0, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v0}, Lstericson/busybox/donate/Activity/MainActivity;->getFreeSpace()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->getSpace()F

    move-result v0

    const/high16 v2, -0x4080

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v0}, Lstericson/busybox/donate/Activity/MainActivity;->getCustomPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "/system"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->getSpace()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v0}, Lstericson/busybox/donate/Activity/MainActivity;->getCustomPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    const-string v0, ""

    goto :goto_4
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 23
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 25
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 28
    iget-object v0, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    iput p1, v0, Lstericson/busybox/donate/Activity/MainActivity;->position:I

    .line 29
    if-nez p1, :cond_1

    .line 31
    iget-object v0, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const-string v1, "This feature allows you to install, uninstall, or reinstall the applets listed below on an individual basis. \n\n This feature will also tell you a little information about the applet and whether or not it is currently installed or symlinked. \n\n This feature is useful if you are having a problem with a specific applet not functioning correctly. \n\n To access this feature, please long press on an applet."

    iget-object v2, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v0, v1, v3, v2}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 35
    new-instance v0, Lstericson/busybox/donate/jobs/GetVersion;

    iget-object v1, p0, Lstericson/busybox/donate/listeners/PageChange;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-direct {v0, v1, p0}, Lstericson/busybox/donate/jobs/GetVersion;-><init>(Lstericson/busybox/donate/Activity/MainActivity;Lstericson/busybox/donate/interfaces/CallBack;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/jobs/GetVersion;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
