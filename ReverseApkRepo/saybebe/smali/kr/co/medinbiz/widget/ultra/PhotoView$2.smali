.class Lkr/co/medinbiz/widget/ultra/PhotoView$2;
.super Landroid/os/Handler;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$2;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    .line 437
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 439
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 441
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$2;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mLoagindDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$2(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 442
    sget-object v0, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 443
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$2;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$1(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$2;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$1(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->facebook_writing_success:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$2;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mLoagindDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$2(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 447
    sget-object v0, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 448
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$2;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$1(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$2;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$1(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->facebook_writing_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
