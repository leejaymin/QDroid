.class Lkr/co/medinbiz/widget/setting/SettingLogin$4;
.super Ljava/lang/Thread;
.source "SettingLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/setting/SettingLogin;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    .line 129
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 132
    const-string v0, "0"

    .line 133
    .local v0, hp:Ljava/lang/String;
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->phone:Landroid/widget/TextView;
    invoke-static {v4}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$5(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 134
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->phone:Landroid/widget/TextView;
    invoke-static {v4}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$5(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_0
    new-instance v1, Lkr/co/medinbiz/helper/LoginManager;

    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    iget-object v4, v4, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$6(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$0(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lkr/co/medinbiz/helper/LoginManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    .line 137
    .local v1, login:Lkr/co/medinbiz/helper/LoginManager;
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->http:Lkr/co/medinbiz/helper/HttpManager;
    invoke-static {v4}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$7(Lkr/co/medinbiz/widget/setting/SettingLogin;)Lkr/co/medinbiz/helper/HttpManager;

    move-result-object v4

    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->id:Landroid/widget/EditText;
    invoke-static {v5}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$2(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->pw:Landroid/widget/EditText;
    invoke-static {v6}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$3(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/widget/EditText;

    move-result-object v6

    .line 138
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-virtual {v4, v5, v6, v0}, Lkr/co/medinbiz/helper/HttpManager;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;

    move-result-object v3

    .line 139
    .local v3, roots:Lkr/co/medinbiz/dto/Roots;
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->id:Landroid/widget/EditText;
    invoke-static {v4}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$2(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->pw:Landroid/widget/EditText;
    invoke-static {v5}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$3(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lkr/co/medinbiz/helper/LoginManager;->memberLogin(Lkr/co/medinbiz/dto/Roots;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, result:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 141
    const-string v4, "OK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    invoke-virtual {v1}, Lkr/co/medinbiz/helper/LoginManager;->noticeData()V

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    const-string v4, "NO"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$6(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 145
    :cond_3
    const-string v4, "ERR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$6(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 149
    :cond_4
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$6(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
