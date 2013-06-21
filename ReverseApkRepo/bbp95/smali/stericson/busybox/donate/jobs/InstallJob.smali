.class public Lstericson/busybox/donate/jobs/InstallJob;
.super Lstericson/busybox/donate/jobs/AsyncJob;
.source "InstallJob.java"


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

.field private path:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lstericson/busybox/donate/Activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "version"
    .parameter "path"

    .prologue
    .line 17
    const v0, 0x7f0b0024

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lstericson/busybox/donate/jobs/AsyncJob;-><init>(Landroid/app/Activity;IZZ)V

    .line 18
    iput-object p1, p0, Lstericson/busybox/donate/jobs/InstallJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    .line 19
    iput-object p2, p0, Lstericson/busybox/donate/jobs/InstallJob;->version:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lstericson/busybox/donate/jobs/InstallJob;->path:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lstericson/busybox/donate/domain/Result;

    invoke-virtual {p0, p1}, Lstericson/busybox/donate/jobs/InstallJob;->callback(Lstericson/busybox/donate/domain/Result;)V

    return-void
.end method

.method callback(Lstericson/busybox/donate/domain/Result;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 45
    iget-object v0, p0, Lstericson/busybox/donate/jobs/InstallJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v0, p1}, Lstericson/busybox/donate/Activity/MainActivity;->installDone(Lstericson/busybox/donate/domain/Result;)V

    .line 46
    return-void
.end method

.method bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lstericson/busybox/donate/jobs/InstallJob;->handle()Lstericson/busybox/donate/domain/Result;

    move-result-object v0

    return-object v0
.end method

.method handle()Lstericson/busybox/donate/domain/Result;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 27
    new-instance v0, Lstericson/busybox/donate/jobs/Install;

    invoke-direct {v0}, Lstericson/busybox/donate/jobs/Install;-><init>()V

    iget-object v1, p0, Lstericson/busybox/donate/jobs/InstallJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    iget-object v3, p0, Lstericson/busybox/donate/jobs/InstallJob;->path:Ljava/lang/String;

    iget-object v4, p0, Lstericson/busybox/donate/jobs/InstallJob;->version:Ljava/lang/String;

    iget-object v2, p0, Lstericson/busybox/donate/jobs/InstallJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v2}, Lstericson/busybox/donate/Activity/MainActivity;->getClean()Z

    move-result v6

    move-object v2, p0

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lstericson/busybox/donate/jobs/Install;->install(Landroid/content/Context;Lstericson/busybox/donate/jobs/InstallJob;Ljava/lang/String;Ljava/lang/String;ZZZ)Lstericson/busybox/donate/domain/Result;

    move-result-object v0

    return-object v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lstericson/busybox/donate/jobs/AsyncJob;->onProgressUpdate([Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {v1}, Lstericson/busybox/donate/App;->getPopupView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    .local v0, header:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lstericson/busybox/donate/jobs/InstallJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

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

    .line 40
    return-void
.end method

.method public varargs publishCurrentProgress([Ljava/lang/Object;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lstericson/busybox/donate/jobs/InstallJob;->publishProgress([Ljava/lang/Object;)V

    .line 33
    return-void
.end method
