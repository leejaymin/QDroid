.class Lcom/ui/LapseIt/upload/UploadLoginView$6$1;
.super Ljava/lang/Object;
.source "UploadLoginView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/upload/UploadLoginView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/upload/UploadLoginView$6;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadLoginView$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6$1;->this$1:Lcom/ui/LapseIt/upload/UploadLoginView$6;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6$1;->this$1:Lcom/ui/LapseIt/upload/UploadLoginView$6;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView$6;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;
    invoke-static {v0}, Lcom/ui/LapseIt/upload/UploadLoginView$6;->access$0(Lcom/ui/LapseIt/upload/UploadLoginView$6;)Lcom/ui/LapseIt/upload/UploadLoginView;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/upload/UploadLoginView;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 314
    return-void
.end method
