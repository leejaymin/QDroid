.class public abstract Lcom/scoreloop/client/android/ui/framework/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;
    }
.end annotation


# instance fields
.field protected _listener:Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;

.field private _okButton:Landroid/widget/Button;

.field private _okButtonText:Ljava/lang/String;

.field private _target:Ljava/lang/Object;

.field private _text:Ljava/lang/String;

.field private _textView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const v0, 0x7f090018

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->setCancelable(Z)V

    .line 49
    return-void
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->_textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->_textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->_textView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->_okButtonText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->_okButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->_okButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract getContentViewLayoutId()I
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->_target:Ljava/lang/Object;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->getContentViewLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->setContentView(I)V

    .line 59
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->_textView:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->_okButton:Landroid/widget/Button;

    .line 61
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->refresh()V

    .line 62
    return-void
.end method

.method public setOkButtonText(Ljava/lang/String;)V
    .locals 0
    .parameter "okButtonText"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->_okButtonText:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->refresh()V

    .line 76
    return-void
.end method

.method public setOnActionListener(Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->_listener:Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;

    .line 66
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->_target:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->_text:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->refresh()V

    .line 71
    return-void
.end method
