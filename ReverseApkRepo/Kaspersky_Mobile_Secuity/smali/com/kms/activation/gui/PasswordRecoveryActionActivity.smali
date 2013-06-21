.class public Lcom/kms/activation/gui/PasswordRecoveryActionActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a_()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->setResult(I)V

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->finish()V

    .line 56
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 50
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->setResult(I)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const v2, 0x7f080169

    invoke-virtual {p0, v2}, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030033

    invoke-virtual {p0, v0, v4}, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->a(II)V

    .line 25
    invoke-virtual {p0}, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 26
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    invoke-virtual {p0}, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    invoke-static {p0}, Lfp;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<b><u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f080169

    invoke-virtual {p0, v2}, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u></b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    const v2, 0x7f080168

    invoke-virtual {p0, v2}, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 34
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->a:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->b:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method
