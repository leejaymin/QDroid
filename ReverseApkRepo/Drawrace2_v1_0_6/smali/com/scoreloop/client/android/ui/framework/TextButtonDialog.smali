.class public Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;
.super Lcom/scoreloop/client/android/ui/framework/BaseDialog;
.source "TextButtonDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getContentViewLayoutId()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f030015

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->_listener:Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0025

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->_listener:Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;->onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V

    .line 47
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f0c0025

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, okButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method
