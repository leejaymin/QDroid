.class Lkr/co/medinbiz/widget/ultra/PhotoView$1;
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
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    .line 262
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 265
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$0(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 277
    :goto_0
    :pswitch_0
    return-void

    .line 270
    :pswitch_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->goNext()V

    goto :goto_0

    .line 273
    :pswitch_2
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$1(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$1(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->network_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
