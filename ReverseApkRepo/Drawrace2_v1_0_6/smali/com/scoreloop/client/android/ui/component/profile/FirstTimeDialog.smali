.class public Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;
.super Lcom/scoreloop/client/android/ui/framework/BaseDialog;
.source "FirstTimeDialog.java"


# static fields
.field public static final BUTTON_CANCEL:I = 0x1

.field public static final BUTTON_OK:I


# instance fields
.field private final _currentUsername:Ljava/lang/String;

.field private _email:Landroid/widget/EditText;

.field private _hint:Landroid/widget/TextView;

.field private _username:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "currentUsername"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->setCancelable(Z)V

    .line 47
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->_currentUsername:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected getContentViewLayoutId()I
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f030014

    return v0
.end method

.method public getEmailText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsernameText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->_username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 57
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->_listener:Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 59
    .local v0, viewId:I
    const v1, 0x7f0c0025

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->_listener:Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;->onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V

    .line 66
    .end local v0           #viewId:I
    :cond_0
    :goto_0
    return-void

    .line 62
    .restart local v0       #viewId:I
    :cond_1
    const v1, 0x7f0c0029

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->_listener:Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;->onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v3, 0x7f0c0025

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 85
    .local v1, okButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v3, 0x7f0c0029

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    .local v0, cancelButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v3, 0x7f0c0034

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    .local v2, tvCurrentUsername:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->_currentUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v3, 0x7f0c0036

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->_username:Landroid/widget/EditText;

    .line 91
    const v3, 0x7f0c0038

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->_email:Landroid/widget/EditText;

    .line 92
    const v3, 0x7f0c0031

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->_hint:Landroid/widget/TextView;

    .line 93
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->_hint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method
