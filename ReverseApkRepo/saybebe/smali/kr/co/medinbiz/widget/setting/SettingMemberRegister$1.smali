.class Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;
.super Landroid/os/Handler;
.source "SettingMemberRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/setting/SettingMemberRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$0(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    .line 153
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->sms_send_ok:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    .line 157
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->sms_send_no:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    .line 161
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->result_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_3
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->phone_edit:Landroid/widget/EditText;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$2(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/helper/PreferencesManager;->setPhoneNumber(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lkr/co/medinbiz/helper/PreferencesManager;->getIsLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #calls: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->reLogin()V
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$3(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsAutoLogin(Z)V

    .line 169
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsLogin(Z)V

    .line 170
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lkr/co/medinbiz/helper/PreferencesManager;->setBabydue(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lkr/co/medinbiz/helper/PreferencesManager;->setName(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lkr/co/medinbiz/helper/PreferencesManager;->setLoginType(Ljava/lang/String;)V

    .line 173
    sput-object v2, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->loginWidget:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->setLoginWidget()V

    goto/16 :goto_0

    .line 178
    :pswitch_4
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    .line 179
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->certi_no:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :pswitch_5
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    .line 183
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->network_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :pswitch_6
    sput-object v2, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mainWidget:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->setMainWidget()V

    goto/16 :goto_0

    .line 190
    :pswitch_7
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->login_no:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :pswitch_8
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->result_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
