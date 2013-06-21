.class public Lcom/kms/activation/gui/InternetConnectionRequiredActivity;
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
    .line 16
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b_()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->setResult(I)V

    .line 57
    invoke-virtual {p0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->finish()V

    .line 58
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 46
    invoke-virtual {p0, v2}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->setResult(I)V

    .line 47
    invoke-virtual {p0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->finish()V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v0, v2}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030022

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->a(II)V

    .line 25
    invoke-virtual {p0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 26
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    invoke-virtual {p0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 30
    invoke-virtual {p0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_connection_error_str"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v1}, Lfn;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_0
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->a:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->b:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
