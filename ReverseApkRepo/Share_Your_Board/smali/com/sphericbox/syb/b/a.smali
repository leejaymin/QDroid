.class final Lcom/sphericbox/syb/b/a;
.super Lcom/sphericbox/syb/ui/f;
.source "SourceFile"


# instance fields
.field private G:Lcom/sphericbox/syb/b;

.field final synthetic H:Lcom/sphericbox/syb/b/d;


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/b/d;)V
    .locals 3
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sphericbox/syb/b/a;->H:Lcom/sphericbox/syb/b/d;

    .line 69
    invoke-static {p1}, Lcom/sphericbox/syb/b/d;->a(Lcom/sphericbox/syb/b/d;)Lcom/sphericbox/syb/ui/ActionActivity;

    move-result-object v0

    const v1, 0x7f080012

    const v2, 0x7f030004

    invoke-direct {p0, v0, v1, v2}, Lcom/sphericbox/syb/ui/f;-><init>(Landroid/content/Context;II)V

    .line 70
    return-void
.end method


# virtual methods
.method public a(Lcom/sphericbox/syb/b;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sphericbox/syb/b/a;->G:Lcom/sphericbox/syb/b;

    .line 97
    return-void
.end method

.method protected m()V
    .locals 4

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/b/a;->H:Lcom/sphericbox/syb/b/d;

    iget-object v1, p0, Lcom/sphericbox/syb/b/a;->G:Lcom/sphericbox/syb/b;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/b/d;->b(Lcom/sphericbox/syb/b;)V

    .line 87
    iget-object v0, p0, Lcom/sphericbox/syb/b/a;->H:Lcom/sphericbox/syb/b/d;

    invoke-static {v0}, Lcom/sphericbox/syb/b/d;->a(Lcom/sphericbox/syb/b/d;)Lcom/sphericbox/syb/ui/ActionActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sphericbox/syb/ui/ActionActivity;->dismissDialog(Landroid/app/Dialog;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    iget-object v1, p0, Lcom/sphericbox/syb/b/a;->H:Lcom/sphericbox/syb/b/d;

    invoke-static {v1}, Lcom/sphericbox/syb/b/d;->a(Lcom/sphericbox/syb/b/d;)Lcom/sphericbox/syb/ui/ActionActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/sphericbox/syb/e;

    iget-object v2, p0, Lcom/sphericbox/syb/b/a;->H:Lcom/sphericbox/syb/b/d;

    invoke-static {v2}, Lcom/sphericbox/syb/b/d;->a(Lcom/sphericbox/syb/b/d;)Lcom/sphericbox/syb/ui/ActionActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/sphericbox/syb/b/a;->H:Lcom/sphericbox/syb/b/d;

    invoke-static {v0}, Lcom/sphericbox/syb/b/d;->a(Lcom/sphericbox/syb/b/d;)Lcom/sphericbox/syb/ui/ActionActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/ui/ActionActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected onCancel()V
    .locals 4

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/b/a;->H:Lcom/sphericbox/syb/b/d;

    invoke-static {v0}, Lcom/sphericbox/syb/b/d;->a(Lcom/sphericbox/syb/b/d;)Lcom/sphericbox/syb/ui/ActionActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sphericbox/syb/ui/ActionActivity;->dismissDialog(Landroid/app/Dialog;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/sphericbox/syb/b/a;->H:Lcom/sphericbox/syb/b/d;

    invoke-static {v1}, Lcom/sphericbox/syb/b/d;->a(Lcom/sphericbox/syb/b/d;)Lcom/sphericbox/syb/ui/ActionActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/sphericbox/syb/e;

    iget-object v2, p0, Lcom/sphericbox/syb/b/a;->H:Lcom/sphericbox/syb/b/d;

    invoke-static {v2}, Lcom/sphericbox/syb/b/d;->a(Lcom/sphericbox/syb/b/d;)Lcom/sphericbox/syb/ui/ActionActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/sphericbox/syb/b/a;->H:Lcom/sphericbox/syb/b/d;

    invoke-static {v0}, Lcom/sphericbox/syb/b/d;->a(Lcom/sphericbox/syb/b/d;)Lcom/sphericbox/syb/ui/ActionActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/ui/ActionActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method
