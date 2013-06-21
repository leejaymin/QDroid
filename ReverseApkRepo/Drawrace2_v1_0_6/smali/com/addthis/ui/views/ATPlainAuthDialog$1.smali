.class Lcom/addthis/ui/views/ATPlainAuthDialog$1;
.super Ljava/lang/Object;
.source "ATPlainAuthDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/ui/views/ATPlainAuthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addthis/ui/views/ATPlainAuthDialog;


# direct methods
.method constructor <init>(Lcom/addthis/ui/views/ATPlainAuthDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/addthis/ui/views/ATPlainAuthDialog$1;->this$0:Lcom/addthis/ui/views/ATPlainAuthDialog;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/addthis/ui/views/ATPlainAuthDialog$1;->this$0:Lcom/addthis/ui/views/ATPlainAuthDialog;

    #getter for: Lcom/addthis/ui/views/ATPlainAuthDialog;->mUserName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/addthis/ui/views/ATPlainAuthDialog;->access$0(Lcom/addthis/ui/views/ATPlainAuthDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/addthis/ui/views/ATPlainAuthDialog$1;->this$0:Lcom/addthis/ui/views/ATPlainAuthDialog;

    #getter for: Lcom/addthis/ui/views/ATPlainAuthDialog;->mUserName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/addthis/ui/views/ATPlainAuthDialog;->access$0(Lcom/addthis/ui/views/ATPlainAuthDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/addthis/ui/views/ATPlainAuthDialog$1;->this$0:Lcom/addthis/ui/views/ATPlainAuthDialog;

    #getter for: Lcom/addthis/ui/views/ATPlainAuthDialog;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/addthis/ui/views/ATPlainAuthDialog;->access$1(Lcom/addthis/ui/views/ATPlainAuthDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/addthis/ui/views/ATPlainAuthDialog$1;->this$0:Lcom/addthis/ui/views/ATPlainAuthDialog;

    #getter for: Lcom/addthis/ui/views/ATPlainAuthDialog;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/addthis/ui/views/ATPlainAuthDialog;->access$1(Lcom/addthis/ui/views/ATPlainAuthDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, values:Landroid/os/Bundle;
    const-string v1, "plainUserName"

    iget-object v2, p0, Lcom/addthis/ui/views/ATPlainAuthDialog$1;->this$0:Lcom/addthis/ui/views/ATPlainAuthDialog;

    #getter for: Lcom/addthis/ui/views/ATPlainAuthDialog;->mUserName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/addthis/ui/views/ATPlainAuthDialog;->access$0(Lcom/addthis/ui/views/ATPlainAuthDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "plainPassword"

    iget-object v2, p0, Lcom/addthis/ui/views/ATPlainAuthDialog$1;->this$0:Lcom/addthis/ui/views/ATPlainAuthDialog;

    #getter for: Lcom/addthis/ui/views/ATPlainAuthDialog;->mPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/addthis/ui/views/ATPlainAuthDialog;->access$1(Lcom/addthis/ui/views/ATPlainAuthDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/addthis/ui/views/ATPlainAuthDialog$1;->this$0:Lcom/addthis/ui/views/ATPlainAuthDialog;

    #getter for: Lcom/addthis/ui/views/ATPlainAuthDialog;->mListener:Lcom/addthis/ui/views/ATOAuthDialogListener;
    invoke-static {v1}, Lcom/addthis/ui/views/ATPlainAuthDialog;->access$2(Lcom/addthis/ui/views/ATPlainAuthDialog;)Lcom/addthis/ui/views/ATOAuthDialogListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/addthis/ui/views/ATPlainAuthDialog$1;->this$0:Lcom/addthis/ui/views/ATPlainAuthDialog;

    #getter for: Lcom/addthis/ui/views/ATPlainAuthDialog;->mListener:Lcom/addthis/ui/views/ATOAuthDialogListener;
    invoke-static {v1}, Lcom/addthis/ui/views/ATPlainAuthDialog;->access$2(Lcom/addthis/ui/views/ATPlainAuthDialog;)Lcom/addthis/ui/views/ATOAuthDialogListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/addthis/ui/views/ATOAuthDialogListener;->onAuthViewComplete(Landroid/os/Bundle;)V

    goto :goto_0
.end method
