.class public Lcom/kms/antitheft/gui/InfoActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a_()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f030020

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/antitheft/gui/InfoActivity;->a(II)V

    .line 23
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/InfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 27
    const-string v0, "com.kms.antitheft.info.title"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 29
    const-string v0, "title"

    move-object v1, v0

    .line 31
    :goto_0
    const-string v0, "com.kms.antitheft.info.text"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 33
    const-string v0, "message"

    move-object v2, v0

    .line 35
    :goto_1
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_0
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_1
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 45
    new-instance v1, LbR;

    invoke-direct {v1, p0}, LbR;-><init>(Lcom/kms/antitheft/gui/InfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void

    :cond_2
    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
