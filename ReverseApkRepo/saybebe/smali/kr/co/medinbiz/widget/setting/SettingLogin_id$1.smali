.class Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;
.super Landroid/os/Handler;
.source "SettingLogin_id.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/setting/SettingLogin_id;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    .line 62
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin_id;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->access$0(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    :pswitch_0
    return-void

    .line 68
    :pswitch_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->login_ok:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mainWidget:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin_id;->inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->access$1(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin_id;->id:Landroid/widget/EditText;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->access$2(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 71
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin_id;->inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->access$1(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin_id;->pw:Landroid/widget/EditText;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->access$3(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 72
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->setMainWidget()V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->login_no:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_3
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->result_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_4
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->setJoinWidget()V

    goto :goto_0

    .line 84
    :pswitch_5
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->network_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :pswitch_6
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    #calls: Lkr/co/medinbiz/widget/setting/SettingLogin_id;->memberOverlapDialog()V
    invoke-static {v0}, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->access$4(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)V

    goto/16 :goto_0

    .line 66
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
