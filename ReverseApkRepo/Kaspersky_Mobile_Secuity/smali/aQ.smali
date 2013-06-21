.class public final LaQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kms/activation/gui/PasswordRecoveryActivity;


# direct methods
.method public constructor <init>(Lcom/kms/activation/gui/PasswordRecoveryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, LaQ;->a:Lcom/kms/activation/gui/PasswordRecoveryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 404
    iget-object v0, p0, LaQ;->a:Lcom/kms/activation/gui/PasswordRecoveryActivity;

    invoke-static {v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->a(Lcom/kms/activation/gui/PasswordRecoveryActivity;)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, LaQ;->a:Lcom/kms/activation/gui/PasswordRecoveryActivity;

    invoke-virtual {v1, v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->a(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, LaQ;->a:Lcom/kms/activation/gui/PasswordRecoveryActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->a(Lcom/kms/activation/gui/PasswordRecoveryActivity;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, LaQ;->a:Lcom/kms/activation/gui/PasswordRecoveryActivity;

    invoke-static {v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->b(Lcom/kms/activation/gui/PasswordRecoveryActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 410
    iget-object v0, p0, LaQ;->a:Lcom/kms/activation/gui/PasswordRecoveryActivity;

    invoke-static {v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->c(Lcom/kms/activation/gui/PasswordRecoveryActivity;)V

    .line 420
    :cond_0
    :goto_0
    iget-object v0, p0, LaQ;->a:Lcom/kms/activation/gui/PasswordRecoveryActivity;

    invoke-static {v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->e(Lcom/kms/activation/gui/PasswordRecoveryActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 421
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, LaQ;->a:Lcom/kms/activation/gui/PasswordRecoveryActivity;

    invoke-virtual {v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->d()V

    .line 414
    iget-object v0, p0, LaQ;->a:Lcom/kms/activation/gui/PasswordRecoveryActivity;

    const v1, 0x7f08016e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 418
    iget-object v0, p0, LaQ;->a:Lcom/kms/activation/gui/PasswordRecoveryActivity;

    invoke-static {v0}, Lcom/kms/activation/gui/PasswordRecoveryActivity;->d(Lcom/kms/activation/gui/PasswordRecoveryActivity;)V

    goto :goto_0
.end method
