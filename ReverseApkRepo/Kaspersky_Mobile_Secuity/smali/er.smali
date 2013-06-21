.class public final Ler;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private a:Lcom/kms/gui/dialog/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 68
    new-instance v0, Lcom/kms/gui/dialog/AlertController;

    invoke-virtual {p0}, Ler;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kms/gui/dialog/AlertController;-><init>(Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Ler;->a:Lcom/kms/gui/dialog/AlertController;

    .line 69
    return-void
.end method

.method static synthetic a(Ler;)Lcom/kms/gui/dialog/AlertController;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Ler;->a:Lcom/kms/gui/dialog/AlertController;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 188
    iget-object v0, p0, Ler;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-virtual {v0}, Lcom/kms/gui/dialog/AlertController;->a()V

    .line 189
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Ler;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-virtual {v0, p2}, Lcom/kms/gui/dialog/AlertController;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Ler;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-virtual {v0, p2}, Lcom/kms/gui/dialog/AlertController;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Ler;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-virtual {v0, p1}, Lcom/kms/gui/dialog/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method
