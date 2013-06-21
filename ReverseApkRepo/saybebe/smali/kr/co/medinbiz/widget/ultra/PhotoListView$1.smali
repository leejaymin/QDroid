.class Lkr/co/medinbiz/widget/ultra/PhotoListView$1;
.super Landroid/os/Handler;
.source "PhotoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/PhotoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/PhotoListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    .line 149
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 152
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$0(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 175
    :goto_0
    :pswitch_0
    return-void

    .line 157
    :pswitch_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mTotalPage:I
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$1(Lkr/co/medinbiz/widget/ultra/PhotoListView;)I

    move-result v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mCurrentPage:I
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$2(Lkr/co/medinbiz/widget/ultra/PhotoListView;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$3(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$3(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mFooterView:Landroid/view/View;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$4(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 165
    :cond_0
    :goto_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    new-instance v1, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$5(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoListView;Landroid/content/Context;)V

    #setter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoListAdapter:Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;
    invoke-static {v0, v1}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$6(Lkr/co/medinbiz/widget/ultra/PhotoListView;Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;)V

    .line 166
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$3(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoListAdapter:Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$7(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$3(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPosition:I
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$8(Lkr/co/medinbiz/widget/ultra/PhotoListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$3(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mFooterView:Landroid/view/View;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$4(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_1

    .line 170
    :pswitch_2
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$5(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/content/Context;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$5(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->network_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 153
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
