.class Lkr/co/medinbiz/widget/setting/SettingJoin$1;
.super Landroid/os/Handler;
.source "SettingJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/setting/SettingJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/setting/SettingJoin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    .line 150
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 153
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingJoin;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingJoin;->access$0(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    return-void

    .line 156
    :pswitch_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->join_ok:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    const/16 v2, 0x3e8

    .line 156
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingJoin;->setLoginWidget()V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    .line 162
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->join_no2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_3
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    .line 166
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->join_no3:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :pswitch_4
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    .line 170
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->result_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_5
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    .line 174
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->network_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 154
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
