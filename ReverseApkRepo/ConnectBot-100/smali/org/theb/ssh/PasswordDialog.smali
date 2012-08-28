.class public Lorg/theb/ssh/PasswordDialog;
.super Landroid/app/Activity;
.source "PasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mOK:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/theb/ssh/PasswordDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lorg/theb/ssh/PasswordDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lorg/theb/ssh/PasswordDialog;->setResult(ILandroid/content/Intent;)V

    .line 50
    invoke-virtual {p0}, Lorg/theb/ssh/PasswordDialog;->finish()V

    .line 51
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedValues"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lorg/theb/ssh/PasswordDialog;->setContentView(I)V

    .line 41
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lorg/theb/ssh/PasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/theb/ssh/PasswordDialog;->mPassword:Landroid/widget/EditText;

    .line 42
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lorg/theb/ssh/PasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/theb/ssh/PasswordDialog;->mOK:Landroid/widget/Button;

    .line 43
    iget-object v0, p0, Lorg/theb/ssh/PasswordDialog;->mOK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
