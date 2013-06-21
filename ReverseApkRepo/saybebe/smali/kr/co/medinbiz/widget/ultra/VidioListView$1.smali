.class Lkr/co/medinbiz/widget/ultra/VidioListView$1;
.super Landroid/os/Handler;
.source "VidioListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/VidioListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/VidioListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    .line 161
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 164
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$0(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 167
    :sswitch_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$0(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 168
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mTotalPage:I
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$1(Lkr/co/medinbiz/widget/ultra/VidioListView;)I

    move-result v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mCurrentPage:I
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$2(Lkr/co/medinbiz/widget/ultra/VidioListView;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 169
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$3(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$3(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mFooterView:Landroid/view/View;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$4(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 176
    :cond_0
    :goto_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    new-instance v1, Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$5(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;-><init>(Lkr/co/medinbiz/widget/ultra/VidioListView;Landroid/content/Context;)V

    #setter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mMovieListAdapter:Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;
    invoke-static {v0, v1}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$6(Lkr/co/medinbiz/widget/ultra/VidioListView;Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;)V

    .line 177
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$3(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mMovieListAdapter:Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$7(Lkr/co/medinbiz/widget/ultra/VidioListView;)Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$3(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mCurrentPosition:I
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$8(Lkr/co/medinbiz/widget/ultra/VidioListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$3(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mFooterView:Landroid/view/View;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$4(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_1

    .line 181
    :sswitch_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$5(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/content/Context;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$5(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->network_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
