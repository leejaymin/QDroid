.class public final Lek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/dialog/AlertController;


# direct methods
.method public constructor <init>(Lcom/kms/gui/dialog/AlertController;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lek;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lek;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->a(Lcom/kms/gui/dialog/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lek;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->b(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 128
    iget-object v0, p0, Lek;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->b(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 134
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    :cond_1
    iget-object v0, p0, Lek;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->h(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lek;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v2}, Lcom/kms/gui/dialog/AlertController;->g(Lcom/kms/gui/dialog/AlertController;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    return-void

    .line 129
    :cond_2
    iget-object v1, p0, Lek;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->c(Lcom/kms/gui/dialog/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lek;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->d(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 130
    iget-object v0, p0, Lek;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->d(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_3
    iget-object v1, p0, Lek;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->e(Lcom/kms/gui/dialog/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lek;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v1}, Lcom/kms/gui/dialog/AlertController;->f(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v0, p0, Lek;->a:Lcom/kms/gui/dialog/AlertController;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->f(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
