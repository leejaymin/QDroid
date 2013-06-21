.class public Lcom/sphericbox/syb/b/f;
.super Lcom/sphericbox/syb/ui/b;
.source "SourceFile"


# instance fields
.field private S:Lcom/sphericbox/syb/ui/ActionActivity;

.field private U:Lcom/sphericbox/syb/b/e;


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/ui/ActionActivity;Lcom/sphericbox/syb/b/e;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    const v0, 0x7f08000e

    const v1, 0x7f020011

    invoke-direct {p0, v0, v1}, Lcom/sphericbox/syb/ui/b;-><init>(II)V

    .line 21
    iput-object p1, p0, Lcom/sphericbox/syb/b/f;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    .line 22
    iput-object p2, p0, Lcom/sphericbox/syb/b/f;->U:Lcom/sphericbox/syb/b/e;

    .line 23
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/b/f;->U:Lcom/sphericbox/syb/b/e;

    invoke-interface {v0}, Lcom/sphericbox/syb/b/e;->y()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 49
    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    iget-object v1, p0, Lcom/sphericbox/syb/b/f;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-static {v1, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/sphericbox/syb/e;

    iget-object v2, p0, Lcom/sphericbox/syb/b/f;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-direct {v1, v2, v3, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/sphericbox/syb/b/f;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/ui/ActionActivity;->showDialog(Landroid/app/Dialog;)V

    move v0, v3

    .line 56
    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/sphericbox/syb/b/f;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    .line 28
    iput-object v0, p0, Lcom/sphericbox/syb/b/f;->U:Lcom/sphericbox/syb/b/e;

    .line 29
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/b/f;->U:Lcom/sphericbox/syb/b/e;

    invoke-interface {v0}, Lcom/sphericbox/syb/b/e;->y()I

    move-result v0

    .line 35
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sphericbox/syb/b/f;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    const-class v3, Lcom/sphericbox/syb/browse/EditCommentActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    const-string v2, "INDEX_EXTRA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    iget-object v0, p0, Lcom/sphericbox/syb/b/f;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    const v2, 0x2154c5a

    invoke-virtual {v0, v1, v2}, Lcom/sphericbox/syb/ui/ActionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    iget-object v1, p0, Lcom/sphericbox/syb/b/f;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-static {v1, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/sphericbox/syb/e;

    iget-object v2, p0, Lcom/sphericbox/syb/b/f;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/sphericbox/syb/b/f;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/ui/ActionActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method
