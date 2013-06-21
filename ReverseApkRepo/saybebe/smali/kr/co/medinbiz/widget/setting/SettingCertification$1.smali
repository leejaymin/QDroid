.class Lkr/co/medinbiz/widget/setting/SettingCertification$1;
.super Landroid/os/Handler;
.source "SettingCertification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/setting/SettingCertification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/setting/SettingCertification;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    .line 154
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

    .line 157
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$0(Lkr/co/medinbiz/widget/setting/SettingCertification;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    .line 161
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->sms_send_ok:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    .line 165
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->sms_send_no:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    .line 169
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->result_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :pswitch_3
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$1(Lkr/co/medinbiz/widget/setting/SettingCertification;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->phone_edit:Landroid/widget/EditText;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$2(Lkr/co/medinbiz/widget/setting/SettingCertification;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/helper/PreferencesManager;->setPhoneNumber(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$1(Lkr/co/medinbiz/widget/setting/SettingCertification;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lkr/co/medinbiz/helper/PreferencesManager;->getIsLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #calls: Lkr/co/medinbiz/widget/setting/SettingCertification;->reLogin()V
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$3(Lkr/co/medinbiz/widget/setting/SettingCertification;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$1(Lkr/co/medinbiz/widget/setting/SettingCertification;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsAutoLogin(Z)V

    .line 177
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$1(Lkr/co/medinbiz/widget/setting/SettingCertification;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsLogin(Z)V

    .line 178
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$1(Lkr/co/medinbiz/widget/setting/SettingCertification;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lkr/co/medinbiz/helper/PreferencesManager;->setBabydue(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$1(Lkr/co/medinbiz/widget/setting/SettingCertification;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lkr/co/medinbiz/helper/PreferencesManager;->setName(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$1(Lkr/co/medinbiz/widget/setting/SettingCertification;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lkr/co/medinbiz/helper/PreferencesManager;->setLoginType(Ljava/lang/String;)V

    .line 181
    sput-object v2, Lkr/co/medinbiz/widget/setting/SettingCertification;->loginWidget:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->setLoginWidget()V

    goto/16 :goto_0

    .line 186
    :pswitch_4
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    .line 187
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->certi_no:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :pswitch_5
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    .line 191
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->network_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :pswitch_6
    sput-object v2, Lkr/co/medinbiz/widget/setting/SettingCertification;->mainWidget:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->setMainWidget()V

    goto/16 :goto_0

    .line 198
    :pswitch_7
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->login_no:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :pswitch_8
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->result_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
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
