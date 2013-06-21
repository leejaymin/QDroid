.class public Lcom/kms/activation/gui/SubscriptionErrorActivity;
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
    .line 22
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b_()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kms/activation/gui/SubscriptionErrorActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 64
    invoke-static {}, Lgj;->c()V

    .line 65
    invoke-virtual {p0}, Lcom/kms/activation/gui/SubscriptionErrorActivity;->finish()V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/kms/activation/gui/SubscriptionErrorActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/kms/activation/gui/SubscriptionErrorActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030050

    invoke-virtual {p0, v0, v3}, Lcom/kms/activation/gui/SubscriptionErrorActivity;->a(II)V

    .line 34
    invoke-virtual {p0}, Lcom/kms/activation/gui/SubscriptionErrorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 35
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    invoke-virtual {p0}, Lcom/kms/activation/gui/SubscriptionErrorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/SubscriptionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    invoke-virtual {p0}, Lcom/kms/activation/gui/SubscriptionErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "errorMessage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/SubscriptionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/SubscriptionErrorActivity;->a:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/kms/activation/gui/SubscriptionErrorActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/SubscriptionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/SubscriptionErrorActivity;->b:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/kms/activation/gui/SubscriptionErrorActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/kms/activation/gui/SubscriptionErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "canRetry"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/kms/activation/gui/SubscriptionErrorActivity;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/kms/activation/gui/SubscriptionErrorActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 50
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51
    iget-object v1, p0, Lcom/kms/activation/gui/SubscriptionErrorActivity;->a:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/kms/activation/gui/SubscriptionErrorActivity;->a:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/SubscriptionErrorActivity;->onClick(Landroid/view/View;)V

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
