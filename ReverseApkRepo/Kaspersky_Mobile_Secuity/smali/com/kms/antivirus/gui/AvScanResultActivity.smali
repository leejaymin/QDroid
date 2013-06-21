.class public Lcom/kms/antivirus/gui/AvScanResultActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b_()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lcom/kavsdk/antivirus/AvObjectScanner;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->finish()V

    .line 98
    :goto_0
    return-void

    .line 31
    :cond_0
    const v0, 0x7f03003c

    invoke-virtual {p0, v0, v1}, Lcom/kms/antivirus/gui/AvScanResultActivity;->a(II)V

    .line 32
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 33
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 36
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 37
    new-instance v2, LcT;

    invoke-direct {v2, p0}, LcT;-><init>(Lcom/kms/antivirus/gui/AvScanResultActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 53
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 55
    if-eqz v3, :cond_4

    .line 57
    const-string v0, "SCAN_MODE"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 58
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com_kms_scan_result_cancelled"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move-object v2, v1

    move v1, v0

    .line 61
    :goto_1
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 64
    const v2, 0x7f080037

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 74
    :goto_2
    const v0, 0x7f0b010e

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    if-eqz v1, :cond_3

    .line 77
    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    :goto_3
    const v0, 0x7f0b0111

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    invoke-static {}, LcA;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v0, 0x7f0b0113

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    invoke-static {}, LcA;->l()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    invoke-static {}, LcA;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v0, 0x7f0b0117

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    invoke-static {}, LcA;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v0, 0x7f0b0119

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    invoke-static {}, LcA;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 66
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 68
    const v2, 0x7f080221

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 72
    :cond_2
    const v2, 0x7f080038

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 81
    :cond_3
    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_4
    move-object v2, v0

    goto/16 :goto_1
.end method
