.class Lkr/co/medinbiz/widget/invite/InviteMain$1;
.super Landroid/os/Handler;
.source "InviteMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/invite/InviteMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/invite/InviteMain;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/invite/InviteMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    .line 230
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 247
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$3(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 250
    :goto_0
    invoke-static {}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$12()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v5, :cond_0

    .line 251
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\ubaa9\ub85d\uc740 \uc2a4\ud06c\ub864 \uac00\ub2a5\ud569\ub2c8\ub2e4."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 252
    invoke-static {}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$12()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$13(Ljava/lang/Integer;)V

    .line 254
    :cond_0
    return-void

    .line 235
    :pswitch_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lkr/co/medinbiz/widget/invite/InviteMain;->listSort(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain;Ljava/util/ArrayList;)V

    .line 236
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lkr/co/medinbiz/widget/invite/InviteMain;->listSort(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain;Ljava/util/ArrayList;)V

    .line 237
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$3(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 238
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    new-instance v1, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    iget-object v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;-><init>(Lkr/co/medinbiz/widget/invite/InviteMain;Landroid/content/Context;I)V

    #setter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mAdapter1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;
    invoke-static {v0, v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$5(Lkr/co/medinbiz/widget/invite/InviteMain;Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;)V

    .line 239
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    new-instance v1, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    iget-object v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;-><init>(Lkr/co/medinbiz/widget/invite/InviteMain;Landroid/content/Context;I)V

    #setter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mAdapter2:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;
    invoke-static {v0, v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$6(Lkr/co/medinbiz/widget/invite/InviteMain;Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;)V

    .line 240
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mlist1:Landroid/widget/ListView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$7(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mAdapter1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$8(Lkr/co/medinbiz/widget/invite/InviteMain;)Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mlist2:Landroid/widget/ListView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$9(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mAdapter2:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$10(Lkr/co/medinbiz/widget/invite/InviteMain;)Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$1;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #calls: Lkr/co/medinbiz/widget/invite/InviteMain;->listInit()V
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$11(Lkr/co/medinbiz/widget/invite/InviteMain;)V

    goto/16 :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
