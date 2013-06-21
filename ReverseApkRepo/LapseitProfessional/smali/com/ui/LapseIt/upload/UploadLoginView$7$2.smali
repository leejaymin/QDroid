.class Lcom/ui/LapseIt/upload/UploadLoginView$7$2;
.super Ljava/lang/Object;
.source "UploadLoginView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/upload/UploadLoginView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/upload/UploadLoginView$7;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadLoginView$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7$2;->this$1:Lcom/ui/LapseIt/upload/UploadLoginView$7;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 397
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7$2;->this$1:Lcom/ui/LapseIt/upload/UploadLoginView$7;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;
    invoke-static {v2}, Lcom/ui/LapseIt/upload/UploadLoginView$7;->access$0(Lcom/ui/LapseIt/upload/UploadLoginView$7;)Lcom/ui/LapseIt/upload/UploadLoginView;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 398
    const-string v2, "Login failed"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 399
    const-string v2, "Your credentials does not match. Please verify !"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 400
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 401
    .local v0, dialog:Landroid/app/AlertDialog;
    const-string v1, "Ok"

    new-instance v2, Lcom/ui/LapseIt/upload/UploadLoginView$7$2$1;

    invoke-direct {v2, p0}, Lcom/ui/LapseIt/upload/UploadLoginView$7$2$1;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView$7$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 409
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 410
    return-void
.end method
