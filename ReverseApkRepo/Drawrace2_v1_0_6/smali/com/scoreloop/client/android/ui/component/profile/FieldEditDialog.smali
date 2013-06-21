.class public Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;
.super Lcom/scoreloop/client/android/ui/framework/BaseDialog;
.source "FieldEditDialog.java"


# static fields
.field public static final BUTTON_CANCEL:I = 0x1

.field public static final BUTTON_OK:I


# instance fields
.field private final _currentLabel:Ljava/lang/String;

.field private _currentText:Ljava/lang/String;

.field private _hint:Ljava/lang/String;

.field private final _newLabel:Ljava/lang/String;

.field private _newText:Ljava/lang/String;

.field private _tfCurrentText:Landroid/widget/TextView;

.field private _tfEditText:Landroid/widget/EditText;

.field private _tfHint:Landroid/widget/TextView;

.field private final _title:Ljava/lang/String;

.field private final description:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "currentLabel"
    .parameter "newLabel"
    .parameter "description"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setCancelable(Z)V

    .line 54
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_title:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_currentLabel:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_newLabel:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->description:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_tfEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_tfEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_newText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_tfCurrentText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_tfCurrentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_currentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_tfHint:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_tfHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_tfHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_2
    return-void
.end method


# virtual methods
.method protected getContentViewLayoutId()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f030013

    return v0
.end method

.method public getEditText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_tfEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_newText:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_tfEditText:Landroid/widget/EditText;

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
    .line 67
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_listener:Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 69
    .local v0, viewId:I
    const v1, 0x7f0c0025

    if-ne v0, v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_listener:Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;->onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V

    .line 76
    .end local v0           #viewId:I
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v0       #viewId:I
    :cond_1
    const v1, 0x7f0c0029

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_listener:Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;->onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x4

    .line 113
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v6, 0x7f0c0025

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 116
    .local v1, okButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v6, 0x7f0c0029

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    .local v0, cancelButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v6, 0x7f0c0023

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 120
    .local v5, tvTitle:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v6, 0x7f0c002c

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 122
    .local v3, tvDescription:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->description:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 123
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->description:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_0
    const v6, 0x7f0c002d

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 128
    .local v2, tvCurrentLabel:Landroid/widget/TextView;
    const v6, 0x7f0c002e

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_tfCurrentText:Landroid/widget/TextView;

    .line 129
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_currentLabel:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 130
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_currentLabel:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_1
    const v6, 0x7f0c002f

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 136
    .local v4, tvNewLabel:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_newLabel:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 137
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_newLabel:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_2
    const v6, 0x7f0c0030

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_tfEditText:Landroid/widget/EditText;

    .line 142
    const v6, 0x7f0c0031

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_tfHint:Landroid/widget/TextView;

    .line 143
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->refresh()V

    .line 144
    return-void

    .line 125
    .end local v2           #tvCurrentLabel:Landroid/widget/TextView;
    .end local v4           #tvNewLabel:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 132
    .restart local v2       #tvCurrentLabel:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_tfCurrentText:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 139
    .restart local v4       #tvNewLabel:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setCurrentText(Ljava/lang/String;)V
    .locals 0
    .parameter "currentText"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_currentText:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->refresh()V

    .line 81
    return-void
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 0
    .parameter "editText"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_newText:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->refresh()V

    .line 86
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->_hint:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->refresh()V

    .line 91
    return-void
.end method
