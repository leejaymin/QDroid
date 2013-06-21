.class public Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;
.super Lcom/scoreloop/client/android/ui/framework/BaseDialog;
.source "OkCancelDialog.java"


# static fields
.field public static final BUTTON_CANCEL:I = 0x1

.field public static final BUTTON_OK:I


# instance fields
.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 79
    const v1, 0x7f0c0023

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, tvTitle:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getContentViewLayoutId()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f030012

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->_listener:Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0025

    if-ne v0, v1, :cond_2

    .line 59
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->_listener:Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;->onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0029

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->_listener:Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;->onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v2, 0x7f0c0025

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 70
    .local v1, okButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v2, 0x7f0c0029

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 73
    .local v0, cancelButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->refresh()V

    .line 76
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->title:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->refresh()V

    .line 51
    return-void
.end method
