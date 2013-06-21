.class Lcom/ui/LapseIt/upload/UploadView$1;
.super Ljava/lang/Object;
.source "UploadView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/upload/UploadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/upload/UploadView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadView$1;->this$0:Lcom/ui/LapseIt/upload/UploadView;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadView$1;->this$0:Lcom/ui/LapseIt/upload/UploadView;

    #getter for: Lcom/ui/LapseIt/upload/UploadView;->titleText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ui/LapseIt/upload/UploadView;->access$0(Lcom/ui/LapseIt/upload/UploadView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadView$1;->this$0:Lcom/ui/LapseIt/upload/UploadView;

    #getter for: Lcom/ui/LapseIt/upload/UploadView;->descText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ui/LapseIt/upload/UploadView;->access$1(Lcom/ui/LapseIt/upload/UploadView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadView$1;->this$0:Lcom/ui/LapseIt/upload/UploadView;

    const-string v2, "Please add a title and a description"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadView$1;->this$0:Lcom/ui/LapseIt/upload/UploadView;

    const-class v2, Lcom/ui/LapseIt/upload/UploadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, service:Landroid/content/Intent;
    const-string v1, "userId"

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadView$1;->this$0:Lcom/ui/LapseIt/upload/UploadView;

    #getter for: Lcom/ui/LapseIt/upload/UploadView;->userId:I
    invoke-static {v2}, Lcom/ui/LapseIt/upload/UploadView;->access$2(Lcom/ui/LapseIt/upload/UploadView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v1, "filePath"

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadView$1;->this$0:Lcom/ui/LapseIt/upload/UploadView;

    #getter for: Lcom/ui/LapseIt/upload/UploadView;->filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/ui/LapseIt/upload/UploadView;->access$3(Lcom/ui/LapseIt/upload/UploadView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "title"

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadView$1;->this$0:Lcom/ui/LapseIt/upload/UploadView;

    #getter for: Lcom/ui/LapseIt/upload/UploadView;->titleText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/ui/LapseIt/upload/UploadView;->access$0(Lcom/ui/LapseIt/upload/UploadView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "desc"

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadView$1;->this$0:Lcom/ui/LapseIt/upload/UploadView;

    #getter for: Lcom/ui/LapseIt/upload/UploadView;->descText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/ui/LapseIt/upload/UploadView;->access$1(Lcom/ui/LapseIt/upload/UploadView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v1, "postFacebook"

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadView$1;->this$0:Lcom/ui/LapseIt/upload/UploadView;

    #getter for: Lcom/ui/LapseIt/upload/UploadView;->postFace:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/ui/LapseIt/upload/UploadView;->access$4(Lcom/ui/LapseIt/upload/UploadView;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadView$1;->this$0:Lcom/ui/LapseIt/upload/UploadView;

    invoke-virtual {v1, v0}, Lcom/ui/LapseIt/upload/UploadView;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadView$1;->this$0:Lcom/ui/LapseIt/upload/UploadView;

    const-string v2, "Your video is being uploaded, find more details in the notification bar"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 96
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadView$1;->this$0:Lcom/ui/LapseIt/upload/UploadView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/upload/UploadView;->finish()V

    goto/16 :goto_0

    .line 100
    .end local v0           #service:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadView$1;->this$0:Lcom/ui/LapseIt/upload/UploadView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/upload/UploadView;->finish()V

    goto/16 :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00b2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
