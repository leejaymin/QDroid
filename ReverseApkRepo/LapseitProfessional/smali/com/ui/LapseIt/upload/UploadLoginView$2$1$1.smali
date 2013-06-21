.class Lcom/ui/LapseIt/upload/UploadLoginView$2$1$1;
.super Ljava/lang/Object;
.source "UploadLoginView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/upload/UploadLoginView$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ui/LapseIt/upload/UploadLoginView$2$1;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadLoginView$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2$1$1;->this$2:Lcom/ui/LapseIt/upload/UploadLoginView$2$1;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2$1$1;->this$2:Lcom/ui/LapseIt/upload/UploadLoginView$2$1;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView$2$1;->this$1:Lcom/ui/LapseIt/upload/UploadLoginView$2;
    invoke-static {v0}, Lcom/ui/LapseIt/upload/UploadLoginView$2$1;->access$0(Lcom/ui/LapseIt/upload/UploadLoginView$2$1;)Lcom/ui/LapseIt/upload/UploadLoginView$2;

    move-result-object v0

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;
    invoke-static {v0}, Lcom/ui/LapseIt/upload/UploadLoginView$2;->access$0(Lcom/ui/LapseIt/upload/UploadLoginView$2;)Lcom/ui/LapseIt/upload/UploadLoginView;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/upload/UploadLoginView;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 172
    return-void
.end method
