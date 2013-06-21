.class final Lde/androidpit/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lde/androidpit/a/c;


# direct methods
.method constructor <init>(Lde/androidpit/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/androidpit/a/d;->a:Lde/androidpit/a/c;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 382
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 383
    iget-object v1, p0, Lde/androidpit/a/d;->a:Lde/androidpit/a/c;

    invoke-static {v1}, Lde/androidpit/a/c;->a(Lde/androidpit/a/c;)Lde/androidpit/a/b;

    move-result-object v1

    iget-object v1, v1, Lde/androidpit/a/b;->a:Landroid/content/Context;

    .line 382
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    sget v1, Lde/androidpit/a/j;->c:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 387
    iget-object v1, p0, Lde/androidpit/a/d;->a:Lde/androidpit/a/c;

    .line 388
    iget-object v2, p0, Lde/androidpit/a/d;->a:Lde/androidpit/a/c;

    invoke-static {v2}, Lde/androidpit/a/c;->a(Lde/androidpit/a/c;)Lde/androidpit/a/b;

    move-result-object v2

    iget-object v2, v2, Lde/androidpit/a/b;->a:Landroid/content/Context;

    .line 389
    sget v3, Lde/androidpit/a/i;->a:I

    .line 390
    const/4 v4, 0x0

    .line 387
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lde/androidpit/a/c;->a:Landroid/view/View;

    .line 391
    iget-object v1, p0, Lde/androidpit/a/d;->a:Lde/androidpit/a/c;

    iget-object v1, v1, Lde/androidpit/a/c;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 394
    sget v1, Lde/androidpit/a/j;->b:I

    .line 395
    iget-object v2, p0, Lde/androidpit/a/d;->a:Lde/androidpit/a/c;

    .line 393
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    sget v1, Lde/androidpit/a/j;->a:I

    .line 398
    iget-object v2, p0, Lde/androidpit/a/d;->a:Lde/androidpit/a/c;

    .line 396
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 404
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    iget-object v0, p0, Lde/androidpit/a/d;->a:Lde/androidpit/a/c;

    invoke-static {v0}, Lde/androidpit/a/c;->a(Lde/androidpit/a/c;)Lde/androidpit/a/b;

    move-result-object v0

    iget-object v0, v0, Lde/androidpit/a/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lde/androidpit/a/d;->a:Lde/androidpit/a/c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 413
    iget-object v0, p0, Lde/androidpit/a/d;->a:Lde/androidpit/a/c;

    invoke-static {v0}, Lde/androidpit/a/c;->a(Lde/androidpit/a/c;)Lde/androidpit/a/b;

    move-result-object v0

    .line 414
    sget-object v1, Lde/androidpit/a/a;->f:Lde/androidpit/a/a;

    .line 415
    invoke-virtual {v0, v1}, Lde/androidpit/a/b;->a(Lde/androidpit/a/a;)V

    goto :goto_0
.end method
