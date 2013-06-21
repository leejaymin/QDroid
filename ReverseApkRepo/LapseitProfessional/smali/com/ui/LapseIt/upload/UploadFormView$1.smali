.class Lcom/ui/LapseIt/upload/UploadFormView$1;
.super Ljava/lang/Object;
.source "UploadFormView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadFormView$1;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$1;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->userText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ui/LapseIt/upload/UploadFormView;->access$0(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$1;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->passText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ui/LapseIt/upload/UploadFormView;->access$1(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$1;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->confirmPassText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ui/LapseIt/upload/UploadFormView;->access$2(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$1;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->emailText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ui/LapseIt/upload/UploadFormView;->access$3(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$1;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    const/4 v1, 0x1

    #setter for: Lcom/ui/LapseIt/upload/UploadFormView;->dataIsValid:Z
    invoke-static {v0, v1}, Lcom/ui/LapseIt/upload/UploadFormView;->access$4(Lcom/ui/LapseIt/upload/UploadFormView;Z)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$1;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    const/4 v1, 0x0

    #setter for: Lcom/ui/LapseIt/upload/UploadFormView;->dataIsValid:Z
    invoke-static {v0, v1}, Lcom/ui/LapseIt/upload/UploadFormView;->access$4(Lcom/ui/LapseIt/upload/UploadFormView;Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 82
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 79
    return-void
.end method
