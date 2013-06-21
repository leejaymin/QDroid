.class Lcom/ui/LapseIt/upload/UploadFormView$4$2$1;
.super Ljava/lang/Object;
.source "UploadFormView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/upload/UploadFormView$4$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ui/LapseIt/upload/UploadFormView$4$2;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadFormView$4$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadFormView$4$2$1;->this$2:Lcom/ui/LapseIt/upload/UploadFormView$4$2;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 212
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 214
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$4$2$1;->this$2:Lcom/ui/LapseIt/upload/UploadFormView$4$2;

    iget-boolean v0, v0, Lcom/ui/LapseIt/upload/UploadFormView$4$2;->finishAfterDialog:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$4$2$1;->this$2:Lcom/ui/LapseIt/upload/UploadFormView$4$2;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView$4$2;->this$1:Lcom/ui/LapseIt/upload/UploadFormView$4;
    invoke-static {v0}, Lcom/ui/LapseIt/upload/UploadFormView$4$2;->access$0(Lcom/ui/LapseIt/upload/UploadFormView$4$2;)Lcom/ui/LapseIt/upload/UploadFormView$4;

    move-result-object v0

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;
    invoke-static {v0}, Lcom/ui/LapseIt/upload/UploadFormView$4;->access$0(Lcom/ui/LapseIt/upload/UploadFormView$4;)Lcom/ui/LapseIt/upload/UploadFormView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ui/LapseIt/upload/UploadFormView;->finish()V

    .line 217
    :cond_0
    return-void
.end method
