.class final Lcom/sphericbox/syb/browse/i;
.super Lcom/sphericbox/syb/b/d;
.source "SourceFile"


# instance fields
.field final synthetic ak:Lcom/sphericbox/syb/browse/BrowseActivity;


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/browse/BrowseActivity;Lcom/sphericbox/syb/ui/ActionActivity;Lcom/sphericbox/syb/h;Lcom/sphericbox/syb/b/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/sphericbox/syb/browse/i;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    .line 376
    invoke-direct {p0, p2, p3, p4}, Lcom/sphericbox/syb/b/d;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;Lcom/sphericbox/syb/h;Lcom/sphericbox/syb/b/e;)V

    .line 377
    return-void
.end method


# virtual methods
.method protected b(Lcom/sphericbox/syb/b;)V
    .locals 4
    .parameter

    .prologue
    .line 382
    :try_start_0
    invoke-super {p0, p1}, Lcom/sphericbox/syb/b/d;->b(Lcom/sphericbox/syb/b;)V

    .line 383
    iget-object v0, p0, Lcom/sphericbox/syb/browse/i;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->h(Lcom/sphericbox/syb/browse/BrowseActivity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    iget-object v1, p0, Lcom/sphericbox/syb/browse/i;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-static {v1, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 386
    new-instance v1, Lcom/sphericbox/syb/e;

    iget-object v2, p0, Lcom/sphericbox/syb/browse/i;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/sphericbox/syb/browse/i;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method
