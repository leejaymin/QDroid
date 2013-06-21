.class Lcom/ui/LapseIt/upload/UploadFormView$2;
.super Ljava/lang/Object;
.source "UploadFormView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/upload/UploadFormView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/upload/UploadFormView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadFormView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->dataIsValid:Z
    invoke-static {v0}, Lcom/ui/LapseIt/upload/UploadFormView;->access$5(Lcom/ui/LapseIt/upload/UploadFormView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    const-string v1, "Please, all fields must be filled."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->passText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ui/LapseIt/upload/UploadFormView;->access$1(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->confirmPassText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ui/LapseIt/upload/UploadFormView;->access$2(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    const-string v1, "Your password does not match !"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->emailText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ui/LapseIt/upload/UploadFormView;->access$3(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/upload/UploadFormView;->checkEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    const-string v1, "Your email is invalid !"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->agreeCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/ui/LapseIt/upload/UploadFormView;->access$6(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    const-string v1, "You need to agree with the terms or hit back button !"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->userText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ui/LapseIt/upload/UploadFormView;->access$0(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->passText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/ui/LapseIt/upload/UploadFormView;->access$1(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/upload/UploadFormView$2;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->emailText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/ui/LapseIt/upload/UploadFormView;->access$3(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/ui/LapseIt/upload/UploadFormView;->subscribeUserHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/ui/LapseIt/upload/UploadFormView;->access$7(Lcom/ui/LapseIt/upload/UploadFormView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
