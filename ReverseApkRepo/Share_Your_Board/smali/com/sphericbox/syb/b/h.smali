.class public final Lcom/sphericbox/syb/b/h;
.super Lcom/sphericbox/syb/ui/b;
.source "SourceFile"


# instance fields
.field private S:Lcom/sphericbox/syb/ui/ActionActivity;

.field private final bq:Z


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/ui/ActionActivity;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16
    const v0, 0x7f08000a

    const v1, 0x7f02000e

    invoke-direct {p0, v0, v1}, Lcom/sphericbox/syb/ui/b;-><init>(II)V

    .line 17
    iput-object p1, p0, Lcom/sphericbox/syb/b/h;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    .line 18
    iput-boolean p2, p0, Lcom/sphericbox/syb/b/h;->bq:Z

    .line 19
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sphericbox/syb/b/h;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    .line 39
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 24
    :try_start_0
    iget-boolean v0, p0, Lcom/sphericbox/syb/b/h;->bq:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/sphericbox/syb/b/h;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v0}, Lcom/sphericbox/syb/ui/ActionActivity;->finish()V

    .line 27
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sphericbox/syb/b/h;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    const-class v2, Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    iget-object v1, p0, Lcom/sphericbox/syb/b/h;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v1, v0}, Lcom/sphericbox/syb/ui/ActionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    iget-object v1, p0, Lcom/sphericbox/syb/b/h;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-static {v1, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/sphericbox/syb/e;

    iget-object v2, p0, Lcom/sphericbox/syb/b/h;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/sphericbox/syb/b/h;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/ui/ActionActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method
