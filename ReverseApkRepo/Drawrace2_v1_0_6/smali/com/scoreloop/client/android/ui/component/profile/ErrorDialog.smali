.class public Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;
.super Lcom/scoreloop/client/android/ui/framework/BaseDialog;
.source "ErrorDialog.java"


# instance fields
.field private _text:Ljava/lang/String;

.field private _title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->setCancelable(Z)V

    .line 41
    return-void
.end method

.method private updateUi()V
    .locals 3

    .prologue
    .line 77
    const v2, 0x7f0c0023

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 78
    .local v1, tvTitle:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->_title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v2, 0x7f0c0024

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, tvErrorMessage:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->_text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected getContentViewLayoutId()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f030010

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0025

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->dismiss()V

    .line 53
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f0c0025

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 71
    .local v0, okButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->updateUi()V

    .line 74
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->_text:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->updateUi()V

    .line 64
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->_title:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/ErrorDialog;->updateUi()V

    .line 58
    return-void
.end method
