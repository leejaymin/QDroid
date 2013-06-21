.class Lkr/co/medinbiz/widget/setting/SettingLogin$5;
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
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$5;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    .line 160
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 163
    new-instance v0, Lkr/co/medinbiz/helper/LoginManager;

    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$5;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    iget-object v3, v3, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$5;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$6(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$5;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$0(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lkr/co/medinbiz/helper/LoginManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    .line 164
    .local v0, login:Lkr/co/medinbiz/helper/LoginManager;
    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$5;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->http:Lkr/co/medinbiz/helper/HttpManager;
    invoke-static {v3}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$7(Lkr/co/medinbiz/widget/setting/SettingLogin;)Lkr/co/medinbiz/helper/HttpManager;

    move-result-object v3

    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$5;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->phone:Landroid/widget/TextView;
    invoke-static {v4}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$5(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkr/co/medinbiz/helper/HttpManager;->loginHP(Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;

    move-result-object v2

    .line 165
    .local v2, roots:Lkr/co/medinbiz/dto/Roots;
    invoke-virtual {v0, v2}, Lkr/co/medinbiz/helper/LoginManager;->phoneLogin(Lkr/co/medinbiz/dto/Roots;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, result:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 167
    const-string v3, "OK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {v0}, Lkr/co/medinbiz/helper/LoginManager;->noticeData()V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const-string v3, "NO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 170
    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Roots;->getSaybebe()Ljava/lang/String;

    move-result-object v3

    const-string v4, "YES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$5;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$6(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 173
    :cond_2
    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$5;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$6(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 175
    :cond_3
    const-string v3, "ERR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$5;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$6(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 179
    :cond_4
    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingLogin$5;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingLogin;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lkr/co/medinbiz/widget/setting/SettingLogin;->access$6(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
