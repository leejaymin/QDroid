.class public Lcom/sphericbox/syb/b/c;
.super Lcom/sphericbox/syb/ui/b;
.source "SourceFile"


# instance fields
.field private S:Lcom/sphericbox/syb/ui/ActionActivity;


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/ui/ActionActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 15
    const v0, 0x7f080011

    const v1, 0x7f02000c

    invoke-direct {p0, v0, v1}, Lcom/sphericbox/syb/ui/b;-><init>(II)V

    .line 16
    iput-object p1, p0, Lcom/sphericbox/syb/b/c;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    .line 17
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sphericbox/syb/b/c;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    .line 27
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 32
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sphericbox/syb/b/c;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    const-class v2, Lcom/sphericbox/syb/browse/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    iget-object v1, p0, Lcom/sphericbox/syb/b/c;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v1, v0}, Lcom/sphericbox/syb/ui/ActionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    iget-object v1, p0, Lcom/sphericbox/syb/b/c;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-static {v1, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/sphericbox/syb/e;

    iget-object v2, p0, Lcom/sphericbox/syb/b/c;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/sphericbox/syb/b/c;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/ui/ActionActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method
