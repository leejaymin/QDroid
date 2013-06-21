.class Lcom/ui/LapseIt/upload/UploadLoginView$2;
.super Ljava/lang/Object;
.source "UploadLoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/upload/UploadLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/upload/UploadLoginView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadLoginView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/upload/UploadLoginView$2;)Lcom/ui/LapseIt/upload/UploadLoginView;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 141
    :sswitch_0
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView;->userText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$0(Lcom/ui/LapseIt/upload/UploadLoginView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView;->passText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$1(Lcom/ui/LapseIt/upload/UploadLoginView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    const-string v2, "Please type your username and password"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView;->userText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$0(Lcom/ui/LapseIt/upload/UploadLoginView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView;->passText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$1(Lcom/ui/LapseIt/upload/UploadLoginView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/ui/LapseIt/upload/UploadLoginView;->loginHandler(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$2(Lcom/ui/LapseIt/upload/UploadLoginView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    const-class v2, Lcom/ui/LapseIt/upload/UploadFormView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    invoke-virtual {v1, v0, v6}, Lcom/ui/LapseIt/upload/UploadLoginView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 154
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    sget-object v1, Lcom/ui/LapseIt/upload/UploadLoginView;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/ui/LapseIt/upload/UploadLoginView;->dialog:Landroid/app/ProgressDialog;

    .line 156
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iget-object v1, v1, Lcom/ui/LapseIt/upload/UploadLoginView;->dialog:Landroid/app/ProgressDialog;

    const-string v2, "Logging in with your Facebook account"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iget-object v1, v1, Lcom/ui/LapseIt/upload/UploadLoginView;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 158
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iget-object v1, v1, Lcom/ui/LapseIt/upload/UploadLoginView;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 159
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ui/LapseIt/upload/UploadLoginView$2$1;

    invoke-direct {v2, p0}, Lcom/ui/LapseIt/upload/UploadLoginView$2$1;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView$2;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 180
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 182
    :cond_2
    sput-boolean v5, Lcom/ui/LapseIt/upload/UploadLoginView;->waitingFacebookCallback:Z

    .line 183
    sget-object v1, Lcom/ui/LapseIt/upload/UploadLoginView;->facebook:Lcom/facebook/android/Facebook;

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "email"

    aput-object v4, v3, v6

    const-string v4, "publish_stream"

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView;->facebookDialog:Lcom/facebook/android/Facebook$DialogListener;
    invoke-static {v4}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$4(Lcom/ui/LapseIt/upload/UploadLoginView;)Lcom/facebook/android/Facebook$DialogListener;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    goto/16 :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x7f0b00aa -> :sswitch_1
        0x7f0b00af -> :sswitch_0
        0x7f0b00b0 -> :sswitch_2
    .end sparse-switch
.end method
