.class public final LbA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LbA;-><init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, LbA;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0b000e

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, LbA;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 50
    iget-object v3, p0, LbA;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v3}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 54
    :goto_0
    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, LbA;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v0, v4}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 62
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 51
    goto :goto_0

    .line 60
    :cond_3
    iget-object v0, p0, LbA;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v0, v4}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    return-void
.end method
