.class Lkr/co/medinbiz/widget/invite/InviteMain$2;
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
    iput-object p1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    .line 538
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 540
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 576
    :goto_0
    return-void

    .line 544
    :pswitch_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v0

    .line 545
    const-string v1, "\ucd08\ub300\uba54\uc2dc\uc9c0\ub97c \ubc1c\uc1a1\ud558\uc600\uc2b5\ub2c8\ub2e4.\n\ucd08\ub300 \ubc1b\uc73c\uc2e0 \ubd84\uc774 \uc811\uc18d\ud558\uc2dc\uba74\n\ucd08\ub300\ud55c \uc0ac\ub78c \ubaa9\ub85d\uc5d0 \ub098\ud0c0\ub0a9\ub2c8\ub2e4."

    .line 544
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 548
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->invite_send_ok:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 549
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mlist1:Landroid/widget/ListView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$7(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 550
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mlist2:Landroid/widget/ListView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$9(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 553
    :pswitch_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\ub85c\uadf8\uc778 \ub418\uc9c0 \uc54a\uc74c"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 555
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->invite_login_didnot:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 558
    :pswitch_2
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->invite_send_fail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 561
    :pswitch_3
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\uc774\ubbf8 \uac00\uc785\ub41c \ucd08\ub300\ud68c\uc6d0 \uc785\ub2c8\ub2e4"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 563
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->invite_already_join:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 566
    :pswitch_4
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\uc54c\uc218 \uc5c6\ub294 \uc624\ub958 \uc785\ub2c8\ub2e4"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 568
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->invite_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 571
    :pswitch_5
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$2;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->network_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 571
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
