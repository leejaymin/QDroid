.class Lkr/co/medinbiz/widget/ultra/UltraMenu$1;
.super Landroid/os/Handler;
.source "UltraMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/UltraMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    .line 208
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 211
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$0(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 212
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    const/4 v2, 0x0

    #setter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMenu;Landroid/app/ProgressDialog;)V

    .line 213
    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit16 v0, v1, -0x2328

    .line 214
    .local v0, diff:I
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 231
    :pswitch_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->err_convert_in_progress:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    :goto_0
    return-void

    .line 216
    :pswitch_1
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mName:Ljava/lang/String;
    invoke-static {v3}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$3(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    iget-object v4, v4, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mMNum:Ljava/lang/String;

    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mVideoList:Lkr/co/medinbiz/dto/VideoList;
    invoke-static {v5}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$4(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Lkr/co/medinbiz/dto/VideoList;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->setVideoListView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkr/co/medinbiz/dto/VideoList;)V

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mName:Ljava/lang/String;
    invoke-static {v3}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$3(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    iget-object v4, v4, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mMNum:Ljava/lang/String;

    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;
    invoke-static {v5}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$5(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Lkr/co/medinbiz/dto/PhotoList;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->setPhotoListView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkr/co/medinbiz/dto/PhotoList;)V

    goto :goto_0

    .line 222
    :pswitch_3
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->err_no_ultra_movie:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :pswitch_4
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->err_no_ultra_picture:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :pswitch_5
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->network_err:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
