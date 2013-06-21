.class public Lstericson/busybox/donate/jobs/UnInstallAppletJob;
.super Lstericson/busybox/donate/jobs/AsyncJob;
.source "UnInstallAppletJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lstericson/busybox/donate/jobs/AsyncJob",
        "<",
        "Lstericson/busybox/donate/domain/Result;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Lstericson/busybox/donate/Activity/MainActivity;

.field private adapter:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private applet:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private position:I


# direct methods
.method public constructor <init>(Lstericson/busybox/donate/Activity/MainActivity;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/AdapterView;)V
    .locals 3
    .parameter "activity"
    .parameter "applet"
    .parameter "path"
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lstericson/busybox/donate/Activity/MainActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p5, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v0, 0x7f0b0024

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lstericson/busybox/donate/jobs/AsyncJob;-><init>(Landroid/app/Activity;IZZ)V

    .line 27
    iput-object p1, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    .line 28
    iput-object p2, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->applet:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->path:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->adapter:Landroid/widget/AdapterView;

    .line 31
    iput p4, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->position:I

    .line 32
    return-void
.end method


# virtual methods
.method bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lstericson/busybox/donate/domain/Result;

    invoke-virtual {p0, p1}, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->callback(Lstericson/busybox/donate/domain/Result;)V

    return-void
.end method

.method callback(Lstericson/busybox/donate/domain/Result;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 73
    iget-object v0, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    iget v1, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->position:I

    iget-object v2, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->adapter:Landroid/widget/AdapterView;

    iget-object v3, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->applet:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->uninstallAppletDone(Lstericson/busybox/donate/domain/Result;ILandroid/widget/AdapterView;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->handle()Lstericson/busybox/donate/domain/Result;

    move-result-object v0

    return-object v0
.end method

.method handle()Lstericson/busybox/donate/domain/Result;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 37
    new-instance v1, Lstericson/busybox/donate/domain/Result;

    invoke-direct {v1}, Lstericson/busybox/donate/domain/Result;-><init>()V

    .line 38
    .local v1, result:Lstericson/busybox/donate/domain/Result;
    invoke-virtual {v1, v4}, Lstericson/busybox/donate/domain/Result;->setSuccess(Z)V

    .line 40
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Preparing System..."

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->publishProgress([Ljava/lang/Object;)V

    .line 44
    :try_start_0
    const-string v2, "/system"

    const-string v3, "rw"

    invoke-static {v2, v3}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Uninstalling "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->applet:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->publishProgress([Ljava/lang/Object;)V

    .line 48
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "toolbox rm "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->applet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rm "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->applet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 51
    .local v0, command:Lcom/stericson/RootTools/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->applet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lstericson/busybox/donate/domain/Result;->setSuccess(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_0
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lstericson/busybox/donate/jobs/AsyncJob;->onProgressUpdate([Ljava/lang/Object;)V

    .line 66
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {v1}, Lstericson/busybox/donate/App;->getPopupView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, header:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v3, 0x7f0b0024

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method
