.class Lkr/co/medinbiz/widget/setting/SettingLogin$1;
.super Landroid/os/Handler;
.source "SettingLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/setting/SettingLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/setting/SettingLogin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$0(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    :pswitch_0
    return-void

    .line 69
    :pswitch_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->login_ok:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mainWidget:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$1(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->id:Landroid/widget/EditText;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$2(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 72
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$1(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->pw:Landroid/widget/EditText;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$3(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 73
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingLogin;->setMainWidget()V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->login_no:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->result_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_4
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingLogin;->setJoinWidget()V

    goto :goto_0

    .line 85
    :pswitch_5
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->network_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :pswitch_6
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #calls: Lkr/co/medinbiz/widget/setting/SettingLogin;->memberOverlapDialog()V
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$4(Lkr/co/medinbiz/widget/setting/SettingLogin;)V

    goto/16 :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
