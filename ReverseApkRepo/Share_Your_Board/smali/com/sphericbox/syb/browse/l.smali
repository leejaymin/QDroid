.class final Lcom/sphericbox/syb/browse/l;
.super Lcom/sphericbox/syb/ui/b;
.source "SourceFile"


# instance fields
.field final synthetic ak:Lcom/sphericbox/syb/browse/BrowseActivity;


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/browse/BrowseActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/sphericbox/syb/browse/l;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    .line 394
    const v0, 0x7f08000d

    const v1, 0x7f020010

    invoke-direct {p0, v0, v1}, Lcom/sphericbox/syb/ui/b;-><init>(II)V

    .line 395
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/browse/l;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    iget-object v1, p0, Lcom/sphericbox/syb/browse/l;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-static {v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->f(Lcom/sphericbox/syb/browse/BrowseActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->a(Lcom/sphericbox/syb/browse/BrowseActivity;Z)Z

    .line 406
    iget-object v0, p0, Lcom/sphericbox/syb/browse/l;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->g(Lcom/sphericbox/syb/browse/BrowseActivity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 405
    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    iget-object v1, p0, Lcom/sphericbox/syb/browse/l;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-static {v1, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 409
    new-instance v1, Lcom/sphericbox/syb/e;

    iget-object v2, p0, Lcom/sphericbox/syb/browse/l;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-direct {v1, v2, v3, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/sphericbox/syb/browse/l;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_1
.end method
