.class public Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;
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
    .line 12
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b_()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;->setResult(I)V

    .line 38
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;->finish()V

    .line 39
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 36
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f030035

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;->a(II)V

    .line 20
    invoke-virtual {p0}, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 21
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 22
    invoke-virtual {p0}, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 25
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;->a:Landroid/widget/Button;

    .line 26
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;->b:Landroid/widget/Button;

    .line 28
    iget-object v0, p0, Lcom/kms/activation/gui/PasswordRecoveryInfoActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method
