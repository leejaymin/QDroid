.class Lcom/ui/LapseIt/upload/UploadFormView$4$2;
.super Ljava/lang/Object;
.source "UploadFormView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/upload/UploadFormView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field finishAfterDialog:Z

.field final synthetic this$1:Lcom/ui/LapseIt/upload/UploadFormView$4;

.field private final synthetic val$finalResult:I


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadFormView$4;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadFormView$4$2;->this$1:Lcom/ui/LapseIt/upload/UploadFormView$4;

    iput p2, p0, Lcom/ui/LapseIt/upload/UploadFormView$4$2;->val$finalResult:I

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/upload/UploadFormView$4$2;)Lcom/ui/LapseIt/upload/UploadFormView$4;
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$4$2;->this$1:Lcom/ui/LapseIt/upload/UploadFormView$4;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x1080027

    .line 175
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadFormView$4$2;->this$1:Lcom/ui/LapseIt/upload/UploadFormView$4;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;
    invoke-static {v2}, Lcom/ui/LapseIt/upload/UploadFormView$4;->access$0(Lcom/ui/LapseIt/upload/UploadFormView$4;)Lcom/ui/LapseIt/upload/UploadFormView;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 177
    .local v0, dialog:Landroid/app/AlertDialog;
    iget v1, p0, Lcom/ui/LapseIt/upload/UploadFormView$4$2;->val$finalResult:I

    packed-switch v1, :pswitch_data_0

    .line 200
    const-string v1, "Lapse It Gallery"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    const-string v1, "You are now member of Lapse It Gallery and when you are allowed to upload videos to the gallery\'s website at lapseit.com/gallery !"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 203
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView$4$2;->this$1:Lcom/ui/LapseIt/upload/UploadFormView$4;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;
    invoke-static {v1}, Lcom/ui/LapseIt/upload/UploadFormView$4;->access$0(Lcom/ui/LapseIt/upload/UploadFormView$4;)Lcom/ui/LapseIt/upload/UploadFormView;

    move-result-object v1

    iget v2, p0, Lcom/ui/LapseIt/upload/UploadFormView$4$2;->val$finalResult:I

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/upload/UploadFormView;->setResult(I)V

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ui/LapseIt/upload/UploadFormView$4$2;->finishAfterDialog:Z

    .line 208
    :goto_0
    const-string v1, "Ok"

    new-instance v2, Lcom/ui/LapseIt/upload/UploadFormView$4$2$1;

    invoke-direct {v2, p0}, Lcom/ui/LapseIt/upload/UploadFormView$4$2$1;-><init>(Lcom/ui/LapseIt/upload/UploadFormView$4$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 221
    return-void

    .line 179
    :pswitch_0
    const-string v1, "Lapse It Gallery"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    const-string v1, "Your chosen username already exists in our database, try another one !"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 182
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView$4$2;->this$1:Lcom/ui/LapseIt/upload/UploadFormView$4;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;
    invoke-static {v1}, Lcom/ui/LapseIt/upload/UploadFormView$4;->access$0(Lcom/ui/LapseIt/upload/UploadFormView$4;)Lcom/ui/LapseIt/upload/UploadFormView;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/upload/UploadFormView;->setResult(I)V

    goto :goto_0

    .line 186
    :pswitch_1
    const-string v1, "Lapse It Gallery"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    const-string v1, "The email you filled already exists in our database, maybe you already subscribed?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 189
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView$4$2;->this$1:Lcom/ui/LapseIt/upload/UploadFormView$4;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;
    invoke-static {v1}, Lcom/ui/LapseIt/upload/UploadFormView$4;->access$0(Lcom/ui/LapseIt/upload/UploadFormView$4;)Lcom/ui/LapseIt/upload/UploadFormView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/upload/UploadFormView;->setResult(I)V

    goto :goto_0

    .line 193
    :pswitch_2
    const-string v1, "Lapse It Gallery"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    const-string v1, "Something went wrong, please try again !"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 196
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView$4$2;->this$1:Lcom/ui/LapseIt/upload/UploadFormView$4;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;
    invoke-static {v1}, Lcom/ui/LapseIt/upload/UploadFormView$4;->access$0(Lcom/ui/LapseIt/upload/UploadFormView$4;)Lcom/ui/LapseIt/upload/UploadFormView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/upload/UploadFormView;->setResult(I)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
