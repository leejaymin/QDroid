.class Lkr/co/medinbiz/LibraryIntro$1;
.super Landroid/os/Handler;
.source "LibraryIntro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/LibraryIntro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/LibraryIntro;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/LibraryIntro;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v0, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/LibraryIntro;->access$0(Lkr/co/medinbiz/LibraryIntro;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/LibraryIntro;->access$0(Lkr/co/medinbiz/LibraryIntro;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mainHome:Ljava/lang/Class;
    invoke-static {v3}, Lkr/co/medinbiz/LibraryIntro;->access$1(Lkr/co/medinbiz/LibraryIntro;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    iget-object v0, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/LibraryIntro;->access$0(Lkr/co/medinbiz/LibraryIntro;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/LibraryIntro;->access$0(Lkr/co/medinbiz/LibraryIntro;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/LibraryIntro;->access$0(Lkr/co/medinbiz/LibraryIntro;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->login_no:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    iget-object v0, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/LibraryIntro;->access$0(Lkr/co/medinbiz/LibraryIntro;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/LibraryIntro;->access$0(Lkr/co/medinbiz/LibraryIntro;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mainHome:Ljava/lang/Class;
    invoke-static {v3}, Lkr/co/medinbiz/LibraryIntro;->access$1(Lkr/co/medinbiz/LibraryIntro;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    iget-object v0, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/LibraryIntro;->access$0(Lkr/co/medinbiz/LibraryIntro;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v0, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/LibraryIntro;->access$0(Lkr/co/medinbiz/LibraryIntro;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/LibraryIntro;->access$0(Lkr/co/medinbiz/LibraryIntro;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->result_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->activityFinish(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :pswitch_3
    iget-object v0, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/LibraryIntro;->access$0(Lkr/co/medinbiz/LibraryIntro;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/LibraryIntro$1;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/LibraryIntro;->access$0(Lkr/co/medinbiz/LibraryIntro;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->network_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->activityFinish(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
